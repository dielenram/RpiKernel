#!/bin/bash
# montarsd - Script para montar la micro sd card.

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
sudo umount /dev/sda1
sudo umount /dev/sda2

${BORRAR} mnt/fat32
${BORRAR} mnt/ext4

mkdir mnt
mkdir mnt/fat32
mkdir mnt/ext4

sudo mount /dev/sda1 mnt/fat32
sudo mount /dev/sda2 mnt/ext4

