#!/bin/bash

sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

git clone https://github.com/xmrig/xmrig.git

mkdir xmrig/build && cd xmrig/build

cmake ..

make

sudo -E bash -c "$(curl -s https://raw.githubusercontent.com/mysteriumnetwork/node/master/install.sh)"
