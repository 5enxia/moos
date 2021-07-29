#!/bin/sh

DISK_IMG='disk.img'
MOUNT_POINT='mnt'
EFI_FILE='BOOTX64.EFI'

rm -f $DISK_IMG
qemu-img create -f raw $DISK_IMG 200M
mkfs.fat -n 'MIKAN OS' -s 2 -f 2 -R 32 -F 32 $DISK_IMG

sudo mount -o loop $DISK_IMG $MOUNT_POINT
sudo mkdir -p $MOUNT_POINT/EFI/BOOT
sudo cp $EFI_FILE $MOUNT_POINT/EFI/BOOT/BOOTX64.EFI
sleep 0.5
sudo umount $MOUNT_POINT
