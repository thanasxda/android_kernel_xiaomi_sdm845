#!/bin/bash
MLX=~/GIT/android_kernel_xiaomi_sdm845
AK=$MLX/AnyKernel3
AIK=$MLX/AIK
TC=~/TOOLCHAIN
cd $MLX
rm -rf $AK
git clone https://github.com/thanasxda/AnyKernel3.git
rm -rf $AIK
git clone https://github.com/thanasxda/AIK.git
rm -rf $TC/clang
mkdir -p ~/TOOLCHAIN
cd $TC
git clone https://github.com/TwistedPrime/twisted-clang.git
mv twisted-clang clang
