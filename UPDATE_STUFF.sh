#!/bin/bash
MLX="$(pwd)"
AK=$MLX/AnyKernel3
AIK=$MLX/AIK
CLANG=~/TOOLCHAIN/clang
sudo apt update
sudo apt -f upgrade -y clang-11 lld-11
sudo apt -f upgrade -y clang-10 lld-10
sudo apt -f upgrade -y gcc-10
sudo apt -f upgrade -y gcc-10-aarch64-linux-gnu gcc-10-arm-linux-gnueabi
sudo apt -f upgrade -y gcc-aarch64-linus-gnu gcc-arm-linux-gnueabi
sudo apt -f upgrade -y gcc clang binutils make flex bison bc build-essential libncurses-dev libssl-dev libelf-dev qt5-default
cd $MLX && git pull
cd $AK && git pull
cd $AIK && git pull
cd $CLANG/.. && git pull
cd $MLX
