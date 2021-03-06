#!/bin/bash
# Rinstalarsd - Script para instalar el kernel en la sd. EJECUTAR COMO ROOT.

######################
# A) CARGAR VARIABLES
######################

KERNEL=kernel7

######################
# B) SITUAR EN EL DIRECTORIO ADECUADO.
######################

cd /home/diego/linux

######################
# C) MAKE MODULES_INSTALL, COPIAR LOS FICHEROS Y DESMONTAR LA TARJETA SD.
######################
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- INSTALL_MOD_PATH=mnt/ext4 modules_install	
cp mnt/fat32/$KERNEL.img mnt/fat32/$KERNEL-backup.img
scripts/mkknlimg arch/arm/boot/zImage mnt/fat32/$KERNEL.img
cp arch/arm/boot/dts/*.dtb mnt/fat32/
cp arch/arm/boot/dts/overlays/*.dtb* mnt/fat32/overlays/
cp arch/arm/boot/dts/overlays/README mnt/fat32/overlays/
umount mnt/fat32
umount mnt/ext4
