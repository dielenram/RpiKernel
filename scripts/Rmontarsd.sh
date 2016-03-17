#!/bin/bash
# montarsd - Script para montar la micro sd card. Debe ejecutarse como root.

######################
# A) CARGAR VARIABLES
######################

BORRAR="rm -fR "

######################
# B) SITUAR EN EL DIRECTORIO ADECUADO.
######################

cd /home/diego/linux

######################
# C) DESMONTAR, RESTAURAR DIRECTORIOS Y MONTAR EL DISPOSITIVO.
######################
umount /dev/sda1 >& /dev/nul
umount /dev/sda2 >& /dev/nul

#${BORRAR} mnt/fat32
#${BORRAR} mnt/ext4
${BORRAR} mnt

mkdir mnt
mkdir mnt/fat32
mkdir mnt/ext4

mount /dev/sda1 mnt/fat32
mount /dev/sda2 mnt/ext4

