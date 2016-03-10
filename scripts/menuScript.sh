#!/bin/bash
# menuScript - Script de arranque de la interfaz de configuración del kernel.

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
#Configuración por defecto
#make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- bcm2709_defconfig

#Configuración personalizada.
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- menuconfig
