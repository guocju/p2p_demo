set -e  # 出错时退出
set -x  # 打印执行的命令

# 进入 build 目录
cd build

# 清空目录（避免误删父目录）
rm -rf ./* ./.??*

# CMake 配置 & 编译
cmake ..
make -j$(nproc)

# 返回项目根目录
cd ../..

# 删除旧的安装目录
sudo rm -rf /usr/local/p2p

# 拷贝新的 p2p 到 /usr/local
sudo cp -r utils/ /usr/local/p2p