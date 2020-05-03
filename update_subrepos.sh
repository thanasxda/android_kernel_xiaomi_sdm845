#!/bin/bash 
MLX="$(pwd)"
AK=$MLX/AnyKernel3
AIK=$MLX/AIK
CLANG=~/TOOLCHAIN/clang
cd $MLX && git pull
cd $AK && git pull
cd $AIK && git pull 
cd $CLANG && git pull 
