# Makefile for the Linux sound card driver
#
subdir-ccflags-y := -O3 -fassociative-math -fasynchronous-unwind-tables -feliminate-unused-debug-types -fexceptions -fno-semantic-interposition -fno-signed-zeros -D_FORTIFY_SOURCE=2 \
-fno-strict-aliasing \
-fno-trapping-math -pipe -ffast-math \
-funroll-loops -fforce-addr -fomit-frame-pointer -mtune=cortex-a75.cortex-a55 -mcpu=cortex-a75.cortex-a55+crc+crypto+fp16+simd+sve \
-fno-stack-protector -pthread -Wall -fwrapv --param=ssp-buffer-size=32 -D_REENTRANT \
-floop-parallelize-all -floop-interchange -ftree-loop-distribution -floop-strip-mine -floop-block -floop-optimize -floop-nest-optimize -fprefetch-loop-arrays -ftree-loop-vectorize \
-ftree-vectorize \
-fPIE




obj-$(CONFIG_SOUND) += soundcore.o
obj-$(CONFIG_SOUND_PRIME) += oss/
obj-$(CONFIG_DMASOUND) += oss/
obj-$(CONFIG_SND) += core/ i2c/ drivers/ isa/ pci/ ppc/ arm/ sh/ synth/ usb/ \
	firewire/ sparc/ spi/ parisc/ pcmcia/ mips/ soc/ atmel/ hda/
obj-$(CONFIG_SND_AOA) += aoa/

# This one must be compilable even if sound is configured out
obj-$(CONFIG_AC97_BUS) += ac97_bus.o

ifeq ($(CONFIG_SND),y)
  obj-y += last.o
endif

soundcore-objs  := sound_core.o
