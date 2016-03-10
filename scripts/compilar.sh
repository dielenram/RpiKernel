#!/bin/bash
# compilar - Script de compilación del kernel.

######################
# A) CARGAR VARIABLES
######################

KERNEL=kernel7

######################
# B) SITUAR EN EL DIRECTORIO ADECUADO.
######################

cd /home/diego/linux

######################
# C) EJECUTAR EL MAKE
######################
make -j3 ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage modules dtbs
