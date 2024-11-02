#!bin/bash

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2404/x86_64/cuda-keyring_1.1-1_all.deb

sudo dpkg -i cuda-keyring_1.1-1_all.deb

sudo apt-get update

sudo apt-get -y install cuda-toolkit-12-6

git clone https://github.com/xmrig/xmrig-cuda.git

mkdir xmrig-cuda/build && cd xmrig-cuda/build

cmake .. -DCUDA_LIB=/usr/local/cuda/lib64/stubs/libcuda.so -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda

make -j$(nproc)

git clone https://github.com/xmrig/xmrig.git

mkdir xmrig/build && cd xmrig/build

cmake ..

make
