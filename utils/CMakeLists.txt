cmake_minimum_required(VERSION 3.10)
project(p2p_runtime C CXX)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)  # 为生成 .so 文件启用 PIC

# 指定 include 路径
include_directories(${CMAKE_SOURCE_DIR}/include)

# 设置源码文件
set(SOURCE_FILES
  src/p2p.cc
  src/pcie_rw.c
)

# 添加共享库目标
add_library(p2p_runtime SHARED ${SOURCE_FILES})

# 传递 WORKDIR 宏，等价于 -DWORKDIR="..."
target_compile_definitions(p2p_runtime PRIVATE WORKDIR="${CMAKE_SOURCE_DIR}")

# 链接 CUDA runtime（如果用到了）
find_package(CUDA QUIET)
if (CUDA_FOUND)
  message(STATUS "CUDA found: ${CUDA_VERSION}")
  target_include_directories(p2p_runtime PRIVATE ${CUDA_INCLUDE_DIRS})
  target_link_libraries(p2p_runtime ${CUDA_CUDA_LIBRARY})
endif()
