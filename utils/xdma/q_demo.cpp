#include <iostream>
#include <stdio.h>
#include <unistd.h> // for sleep
extern "C"{
#include "../../host_runtime/include/pcie_rw.h"
#include "regmap.h"
// #include "genbbox.h"
#include "../../host_runtime/include/hipu.h"
}

#include "cuda.h"
#include "gpuctl.h"
#include "cdev_sgdma.h"
//#include "libxdma.h"

#include <chrono>
#include <iostream>
#include <dirent.h>
#include <signal.h>
#include <pthread.h>
#include <math.h>
#include <stdint.h>
#include <stdlib.h> // posix_memalign()
#include <stdio.h>
#include <unistd.h> // read(), open(), close()
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <sys/uio.h>
#include <linux/ioctl.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/mman.h>
#define DDR_RVCODE_BASE 0x10000000
#define BRAM_SF_BASE    0x00000000
#define BRAM_M0_BASE    0x00020000


#define DDR_HIPU_CODE_ADDR 0x00000REG_HIPU_SR000

#define DDR_HIPU_WT_ADDR 0x00100000
#define DDR_HIPU_BS_ADDR 0x00280000
#define DDR_HIPU_CL_ADDR 0x00300000

#define DDR_HIPU_IFM_ADDR 0x03e00000
#define DDR_HIPU_IFM_LEN 0x00000000

#define DDR_HIPU_OFM_ADDR 0x035c0000
#define DDR_HIPU_OFM_LEN 0x00020000

#define REG_HIPU_VENDOR_ID 0xb0

struct xdma_desc {
    uint64_t src_addr_lo;    // 源地址（低32位）
    uint64_t src_addr_hi;    // 源地址（高32位）
    uint64_t dst_addr_lo;    // 目标地址（低32位）
    uint64_t dst_addr_hi;    // 目标地址（高32位）     
    size_t bytes;          // 传输长度
};

struct dsc_byp_array {
    uint64_t remote_addr_lo;  // remote 地址低32位
    uint64_t remote_addr_hi;  // remote 地址高32位
    size_t len;               // 描述符长度
};

// 或根据需要动态分配

typedef struct parallel_write_arg{
  int fd;
  int *value;
  size_t size;
} parallel_write;

typedef struct BUFFER{
    unsigned char * data; //数据指针和大小
    long size;
} BUFFER;

//文件加载和内存管理
BUFFER new_binary_from_file(const char * filename){
    FILE * fptr = fopen(filename,"rb");
    long fsize;
    unsigned char * data;
    fseek(fptr,0,SEEK_END);
    fsize = ftell(fptr);
    rewind(fptr);
    // data = (unsigned char *) malloc(fsize);
    posix_memalign((void **)&data, 4096 /*alignment */ , fsize + 4096);//分配对其的内存空间
	if (!data) {
		fprintf(stderr, "OOM %lu.\n", fsize + 4096);
	}
    // printf("Memory alloced at : 0x%p \n",data);
    data[0] = 1;
    fread(data + 1, 1 , fsize, fptr);

    BUFFER buff = { .data = data, .size = fsize};//将文件内容打包到buffer结构体中
    data[0] = 1;
    return buff;
}
//向指定地址写入数据，打印调试信息
void write_reg(uint32_t addr, uint32_t len, uint32_t value)
{
    uint32_t local_value = value;
    std::cout << std::showb1ase << std::hex << "write " << addr << " value " << value << std::endl;
    write_bram_reg(addr, len, &local_value);
}
//读取寄存器，每次4byte 
int hipu_init_read_id()
{
    uint32_t bram_reg;
    // read_bram_reg(REG_HIPU_VENDOR_ID, 4, &bram_reg);

	read_bram_reg(0xb0,4,&bram_reg);
	std::cout << std::showbase << std::hex << bram_reg << std::endl;
	read_bram_reg(0xb4,4,&bram_reg);
	std::cout << std::showbase << std::hex << bram_reg << std::endl;
	read_bram_reg(0xb8,4,&bram_reg);
	std::cout << std::showbase << std::hex << bram_reg << std::endl;
	read_bram_reg(0xbc,4,&bram_reg);
	std::cout << std::showbase << std::hex << bram_reg << std::endl;
	read_bram_reg(0xc0,4,&bram_reg);
	std::cout << std::showbase << std::hex << bram_reg << std::endl;

    std::cout << "hipu_init_read_id finished" << std::endl;
}

// void dump_memory_to_file(uint32_t offset, uint32_t size, const char *filename){
// 	printf("dump %s ,%08x, size %08x\n", filename, offset, size);
// 	unsigned char * output_buffer;
// 	posix_memalign((void **)&output_buffer, 4096 /*alignment */ , size + 4096);
// 	read_plddr(offset, size, output_buffer);
//     // for(int i = 0; i< 1024; i++)
//     // {
//     //     printf("%02x ", *(output_buffer+i));
//     // }
//     FILE * fp = fopen(filename, "wb"); 
// 	if(fp)
// 	{
// 		printf("succeed to open file\n");
// 		fwrite(output_buffer, sizeof(char), size, fp);
// 		fclose(fp);
// 	}
// 	else
// 	{
// 		printf("error open file %s\n", filename);
// 	}
// 	free(output_buffer);
// }
//read_plddr 从硬件中读取指定大小的数据 
unsigned char* dump_memory_to_file(uint32_t offset, uint32_t size){
	// printf("dump %08x, size %08x\n", offset, size);
	unsigned char * output_buffer;
	posix_memalign((void **)&output_buffer, 4096 /*alignment */ , size + 4096);
	read_plddr(offset, size, output_buffer);
    return output_buffer;
    // for(int i = 0; i< 1024; i++)
    // {
    //     printf("%02x ", *(output_buffer+i));
    // }
    // FILE * fp = fopen(filename, "wb"); 
	// if(fp)
	// {
	// 	printf("succeed to open file\n");
	// 	fwrite(output_buffer, sizeof(char), size, fp);
	// 	fclose(fp);
	// }
	// else
	// {
	// 	printf("error open file %s\n", filename);
	// }
	// free(output_buffer);
}

//读取内存块 指定offser和size 以4KB块读取，
void dump_4kb_to_file(uint32_t offset, uint32_t size, const char *filename){
    
    // cnt number of 4KiB block
    uint32_t numBlock = size >> 12;
    uint32_t last_blk = size & 0xfff;
    
    numBlock = last_blk ? numBlock + 1 : numBlock;
    // first, read data per 4KiB
    unsigned char* output_array[numBlock];
    for(int i=0; i<numBlock; i++){
        output_array[i] = dump_memory_to_file(offset+0x1000*i, 0x1000);
    }
    
    // then, concat all data
    FILE * fp = fopen(filename, "wb"); 
	if(fp)
	{
		printf("succeed to open file\n");
        if(last_blk) {
            for(int i=0; i<numBlock-1; i++){
                fwrite(output_array[i], sizeof(char), 4096, fp);
            }
            fwrite(output_array[numBlock-1], sizeof(char), last_blk, fp);
        } else {
            for(int i=0; i<numBlock; i++){
                fwrite(output_array[i], sizeof(char), 4096, fp);
            }  
        }   
		fclose(fp);
	}
	else
	{   printf("error open file %s\n", filename);}
}


// void dump_4kb_to_file(uint32_t offset, uint32_t size, const char *filename){
    
//     // cnt number of 4KiB block
//     uint32_t numBlock = size >> 12;
//     uint32_t last_blk = size & 0xfff;
    
//     numBlock = pl_init fopen(filename, "wb"); 
// 	if(fp)
// 	{
// 		printf("succeed to open file\n");
// 		for(int i=0; i<=numBlock; i++){ //TODO: allow non-4KiB last block
//             fwrite(output_array[i], sizeof(char), 4096, fp);
//             free(output_array[i]);
//         }        
// 		fclose(fp);
// 	}
// 	else
// 	{
// 		printf("error open file %s\n", filename);
// 	}
// }


int check_inference_done()
{
    uint32_t bram_reg;
    int done;
    done = 0x0;
    while((done&0x1) != 0x1)
    {
        //read_bram_reg(REG_HIPU_SR, 4, &done);
    }
    std::cout << "waiting" << std::showbase << std::hex << done << std::endl;
}


void rv_init()
{
    uint32_t read;
    std::cout << "rv_init()" << std::endl;
    read_bram_reg(0x00100, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
    read_bram_reg(0x00104, 4, &read);
    std::cout << "read rv reg " << std::hex << read <<  std::endl;
    read_bram_reg(0x00108, 4, &read);
    std::cout << "read rv reg " << std::hex << read << std::endl;
    read_bram_reg(0x0010c, 4, &read);
    std::cout << "read rv reg " << std::hex << read <<  std::endl;

    BUFFER rvcode_buffer = new_binary_from_file("../input/swf_code.bin") ;
    write_plddr(DDR_RVCODE_BASE, rvcode_buffer.size, rvcode_buffer.data);
    // write_plddr(0x0000, 0x1000, rvcode_buffer.data);
    free(rvcode_buffer.data);
    std::cout << "write rvcode to " << std::showbase << std::hex << DDR_RVCODE_BASE << " len:" << rvcode_buffer.size << std::endl; 

	std::cout << "restart rv" << std::endl;

    write_reg(0x1c, 4, 1);
    write_reg(0x1c, 4, 0);
}
int regmap_init()
{
    
    
    std::cout << "call regmap_init" << std::endl;

    BUFFER BUFFER = new_binary_from_file("your_file_name");                    //file_name

//调用write函数生成 buffer 传输的描述符、将描述符数组保存到主机侧，根据传输方向判断
//如果Host到FPGA 则将src_addr赋值给remote_addr，如果“FPGA到Host 则将dst_addr赋值给remote_addr，保存描述符数组每一个的len和remote_addr
    int fd_o = open("/dev/xdma0_h2c_0", O_WRONLY);
    if (fd_o < 0)
    {
        printf("Can't open H2C.\n");
        return -1;
    }

    int fd_i = open("/dev/xdma0_c2h_0", O_WRONLY);
    if (fd_i < 0)
    {
        printf("Can't open H2C.\n");
        return -1;
    }
    struct stDesc{
        uint32_t remote_addr_lo;
        uint32_t remote_addr_hi;
        uint32_t len;
    };

    //parallel_write write_data;
    //write_data = { fd_o, buff.data , buff.size};

    int *arr1;
    int dir = 0;  //dir = 0 H2C dir = 1 C2H;
    int desc_count = (BUFFER.size / 1024 );
    struct xdma_desc *desc_array = struct xdma_desc[desc_count];
    struct dsc_byp_array *dsc_byp_array = struct dsc_byp_array[desc_count];
    ssize_t rc;
    printf("First buffer value:", BUFFER.data[0]);
    rc = write (fd_o, BUFFER.data, BUFFER.size); //调用 write / read 函数生成描述符数组
    if (rc < 0) {
        perror("write failed");
        return -1;
    }

    ioctl(fd_o, IOCTL_XDMA_DESC_ARRAY_GET,&desc_array[0]) ;



  // 遍历并打印描述符信息
    for (int i = 0; i < desc_count; i++) {
        printf("Descriptor %d: src_addr = %llu, dst_addr = %llu, bytes = %u\n", 
            i, desc_array[i].src_addr_lo, desc_array[i].dst_addr_lo, desc_array[i].bytes);
    }
 
    int num_groups = (desc_count + MAX_DESC_PER_GROUP) / MAX_DESC_PER_GROUP;  // 计算描述符数组分组数，每组最多1024个描述符
    printf("Total descriptor groups: %d\n", num_groups);  // 打印总的描述符组数
    //write_reg(stAddrDesc.group, 4, num_groups);
    
            // 打印从内核态返回的描述符数据，看是否正确生成，后面注释掉




    for (int group_index = 0; group_index < num_groups ;group_index++){
        for (int desc_index = 0; desc_index < MAX_DESC_PER_GROUP; desc_index++)
        {
            int i = group_index * MAX_DESC_PER_GROUP + desc_index;

            printf("Descriptor %d: src_addr_lo=0x%x, dst_addr_lo=0x%x, src_addr_hi=0x%x, dst_addr_hi=0x%x, desc_len=%x\n", 
                i, desc_array[i].src_addr_lo, desc_array[i].dst_addr_lo, desc_array[i].src_addr_hi, desc_array[i].dst_addr_hi, desc_array[i].bytes);


            if (dir == 0)
            {
                dsc_byp_array[i].remote_addr_lo = desc_array[i].src_addr_lo;
                dsc_byp_array[i].remote_addr_hi = desc_array[i].src_addr_hi;
            }
            else if (dir == 1)
            {
                dsc_byp_array[i].remote_addr_lo = desc_array[i].dst_addr_lo;
                dsc_byp_array[i].remote_addr_hi = desc_array[i].dst_addr_hi;
            

            dsc_byp_array[i].len = desc_array[i].bytes; // 描述符长度

            // write_reg  NUM_GROUP、 num_desc 、 len remote_addr 写入寄存器
            write_reg(stAddrDesc.group[group_index].desc_list[desc_index].remote_addr_lo, 4, dsc_byp_array[i].remote_addr_lo);
            write_reg(stAddrDesc.group[group_index].desc_list[desc_index].remote_addr_hi, 4, dsc_byp_array[i].remote_addr_hi);
            write_reg(stAddrDesc.group[group_index].desc_list[desc_index].len, 4, dsc_byp_array[i].len);
        }
    }
    }

    return 0;
}


int rv_pool_idle()
{
    std::cout << "rv_pool_idle" << std::endl;
    uint32_t res;
    res = 0;
    while(res&0x1 == 1)
    {
        //read_bram_reg(REG_HIPU_SR, 4, &res);
    }
    //write_reg(REG_HIPU_SR, 4, 0x0);
    return 0;
}


int host_load_desc_param()
{   
    std::cout << "host_load_desc_param" << std::endl;
    //write_reg(BRAM_M0_BASE + 0x10, 4, 0xdeadbeef);
    //write_reg(BRAM_M0_BASE + 0x11, 4, 0xdeadbeed);
    //write_reg(BRAM_M0_BASE + 0x12, 4, 0xdeadbeee);
    //write_reg(BRAM_M0_BASE + 0x13, 4, 0xdeadbeed);
}

int rv_launch_desc()
{   
    std::cout << "rv_launch_desc" << std::endl;
    // write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
    //write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x1);
    // write_reg(BRAM_SF_BASE + REG_HIPU_CR, 4, 0x0);
}


int main()
{
    uint32_t res;
    pl_init();
    rv_init();
    regmap_init();
    while(1)
    {
        rv_pool_idle();
        host_load_desc_param();
        rv_launch_desc();
    }
    return 0;
}
