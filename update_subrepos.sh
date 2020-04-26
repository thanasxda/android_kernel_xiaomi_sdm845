#!/bin/bash 
MLX=~/GIT/android_kernel_xiaomi_sdm845
AK=$MLX/AnyKernel3
AIK=$MLX/AIK
CLANG=~/TOOLCHAIN/clang

cd $AK && git pull
cd $AIK && git pull 
cd $CLANG && git pull 
