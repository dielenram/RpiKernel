#!/bin/bash
# tomoyo - Script de automatización de instalación de tomoyo.

wget -O tomoyo-tools-2.5.0-20140601.tar.gz 'http://osdn.jp/frs/redir.php?m=jaist&f=/tomoyo/53357/tomoyo-tools-2.5.0-20140601.tar.gz'

wget -O tomoyo-tools-2.5.0-20140601.tar.gz.asc 'http://osdn.jp/frs/redir.php?m=jaist&f=/tomoyo/53357/tomoyo-tools-2.5.0-20140601.tar.gz.asc'

wget https://tomoyo.osdn.jp/kumaneko-key

gpg --import kumaneko-key

gpg tomoyo-tools-2.5.0-20140601.tar.gz.asc

tar -zxf tomoyo-tools-2.5.0-20140601.tar.gz

cd tomoyo-tools/

make -s USRLIBDIR=/usr/lib

su

make -s USRLIBDIR=/usr/lib install
