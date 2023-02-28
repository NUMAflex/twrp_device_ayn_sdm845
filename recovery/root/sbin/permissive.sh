#!/sbin/sh

setenforce 0

mkdir -p /dev/block/by-name/
busybox mount -o bind /dev/block/by-name/ /dev/block/by-name/
