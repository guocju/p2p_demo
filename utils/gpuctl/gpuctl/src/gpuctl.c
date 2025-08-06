#include <linux/module.h>
#include <linux/kernel.h>
#define __NO_VERSION__
#include <linux/types.h>
#include <linux/ioport.h>
#include <linux/pci.h>
#include <linux/pagemap.h>
#include <linux/interrupt.h>
#include <linux/proc_fs.h>
#include <asm/io.h>
#include "gpumemdrv.h"
#include "gpuctl.h"
#include "nvfs-p2p.h"
MODULE_AUTHOR("Shun Kasai");
// MODULE_DESCRIPTION(DRV_MODULE_DESC);
// MODULE_VERSION(DRV_MODULE_VERSION);
MODULE_LICENSE("GPL v2");
static int gpuctl_init(void)
{
  printk("Hello my module xxxx\n");
  nvfs_nvidia_p2p_initxxx();
  return 0;
}

int say_hello(void){
  printk("hello from empty module\n");
  return 0;
}
EXPORT_SYMBOL(say_hello);
/*
static void free_nvp_callback(void *data)
{
    struct gpumem_t *entry = (struct gpumem_t*)data;
  printk(KERN_ERR"%s():  caling free_nvp_callback\n", __FUNCTION__);
*/
  /*
  int res;
  struct gpumem_t *entry = (struct gpumem_t*)data;
  if(entry) {
   res = nvfs_nvidia_p2p_free_page_table(entry->page_table);
    if(res == 0) {
      printk(KERN_ERR"%s(): nvidia_p2p_free_page_table() - OK!\n", __FUNCTION__);
      entry->virt_start = 0ULL;
      entry->page_table = 0;
    } else {
      printk(KERN_ERR"%s(): Error in nvidia_p2p_free_page_table()\n", __FUNCTION__);
    }
}}*/
static LIST_HEAD(gpumem_list);
static DEFINE_MUTEX(gpumem_lock);


void nv_p2p_free(void){
  struct gpumem_t *entry, *tmp;
  mutex_lock(&gpumem_lock);
  list_for_each_entry_safe(entry, tmp, &gpumem_list, list) {
    list_del(&entry->list);
    if (entry->page_table) {
      nvfs_nvidia_p2p_put_pages_persistent(0, 0, entry->virt_start, entry->page_table);
      printk(KERN_ERR"%s(): nvidia_p2p_put_pages_persistent() - OK!\n", __FUNCTION__);
      nvfs_nvidia_p2p_free_page_table(entry->page_table);
      printk(KERN_ERR"%s(): nvidia_p2p_free_page_table() - OK!\n", __FUNCTION__);
  }
  kfree(entry);
  }
  mutex_unlock(&gpumem_lock);
}
uint64_t nv_p2p_get(struct gpudma_lock_t *param, struct pci_dev *pdev, struct nvidia_p2p_dma_mapping **dma_mapping){
    int error = 0;
    int ret;
    //int get_page_size;
    size_t pin_size = 0ULL;
    struct gpumem_t *entry = 0;
    //volatile int *ptr;
    //struct gpudma_lock_t param;
    //struct nvidia_p2p_dma_mapping *dma_mapping = NULL;
    //printk("gpuctl:%u", pdev->vendor);
    //debug
    /*if(copy_from_user(&param, (void *)arg, sizeof(struct gpudma_lock_t))) {
        printk(KERN_ERR"%s(): Error in copy_from_user()\n", __FUNCTION__);
        error = -EFAULT;
        goto do_exit;
	}*/

    entry = (struct gpumem_t*)kzalloc(sizeof(struct gpumem_t), GFP_KERNEL);
    if(!entry) {
        printk(KERN_ERR"%s(): Error allocate memory to mapping struct\n", __FUNCTION__);
        error = -ENOMEM;
        goto do_exit;
    }

    INIT_LIST_HEAD(&entry->list);
    entry->handle = entry;

    entry->virt_start = (param->addr & GPU_BOUND_MASK);
   // printk("GPU virt_start address :%lld", entry->virt_start);
    pin_size = (param->addr + param->size - entry->virt_start);
    if(!pin_size) {
        printk(KERN_ERR"%s(): Error invalid memory size!\n", __FUNCTION__);
        error = -EINVAL;
        goto do_free_mem;
    }

    //error = nvfs_nvidia_p2p_get_pages_persistent(0, 0, entry->virt_start, pin_size, &entry->page_table, free_nvp_callback, entry);
    error = nvfs_nvidia_p2p_get_pages_persistent(0, 0, entry->virt_start, pin_size, &entry->page_table, entry);
    if(error != 0) {
        printk(KERN_ERR"%s(): Error in nvidia_p2p_get_pages()\n", __FUNCTION__);
        error = -EINVAL;
        goto do_free_mem;
    }
    //printk("pages: %pr\n", entry->page_table->pages);
    /*param->page_count = entry->page_table->entries;
    get_page_size = (entry->page_table->page_size * entry->page_table->entries);
    printk("get_page_size : %d, page_size : %d, entries : %d", get_page_size, entry->page_table->page_size, entry->page_table->entries);
    param->handle = entry;
    dma_mapping = kmalloc(sizeof(struct nvidia_p2p_dma_mapping), GFP_KERNEL);
    if (!dma_mapping)
      goto do_free_mem;
    printk("0x%llx", entry->page_table->pages[0]->physical_address);
    ptr = ioremap(entry->page_table->pages[0]->physical_address, sizeof(int)*3);
    printk("ptr : %p", ptr);
    printk("ptr value : %d", *ptr);
    *ptr = 50;
    */
    ret = nvfs_nvidia_p2p_dma_map_pages(pdev, entry->page_table, dma_mapping);
    
    if (ret) {
      printk ("Unabled to obtain dma_mapping :%d for %p-%p\n",
		ret, entry->page_table, pdev);
      goto do_unlock_pages;
    }
    
    /*
    for (i = 0; i < dma_mapping->entries - 1; i++) {
      printk("%d Physical 0x%016llx DMA 0x%016llx\n", i,
	       dma_mapping->dma_addresses[i],
	       entry->page_table->pages[i]->physical_address);
      if(dma_mapping->dma_addresses[i] + GPU_BOUND_SIZE != 
	 dma_mapping->dma_addresses[i + 1])
	ndmachunks += 1;
    }*/
    /*
    printk("dma_mapping->entries: %u", dma_mapping->entries);
    printk(KERN_ERR"%s(): param->handle: %p\n", __FUNCTION__, param->handle);
    
    if(copy_to_user((void *)arg, &param, sizeof(struct gpudma_lock_t))) {
        printk(KERN_ERR"%s(): Error in copy_from_user()\n", __FUNCTION__);
        error = -EFAULT;
        goto do_unlock_pages;
    }
    */
    //list_add_tail(&entry->list, &drv->table_list);

    //printk(KERN_ERR"%s(): Add new entry. handle: %p\n", __FUNCTION__, entry->handle);
    mutex_lock(&gpumem_lock);
    list_add_tail(&entry->list, &gpumem_list);
    mutex_unlock(&gpumem_lock);

    return param->addr;

    pr_info("check after return 0 \n");
do_unlock_pages:  
    pr_info("calling nvfs_nvidia_p2p_put_pages \n");
    nvfs_nvidia_p2p_put_pages(0, 0, entry->virt_start, entry->page_table);
do_free_mem:
    pr_info("calling do_free_mem \n");
    kfree(entry);
do_exit:
    return 0;
}

EXPORT_SYMBOL(nv_p2p_get);
EXPORT_SYMBOL(nv_p2p_free);
static void gpuctl_exit(void)
{
  printk("Bye bye my module\n");
}

module_init(gpuctl_init);
module_exit(gpuctl_exit);
