#!/bin/bash
 
#clear tty 
clear
  
#partitioning
 cfdisk

EOF
#formatting
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3

#mounting
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
swapon /dev/sda2
