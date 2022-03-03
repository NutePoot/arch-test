#!/bin/bash
 
### clear tty 
clear
 
### formatting
mkfs.fat -F32 /dev/sda1
mkswap /dev/sda2
mkfs.ext4 /dev/sda3

### mounting
mount /dev/sda3 /mnt
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
swapon /dev/sda2

### Installation
pacstrap /mnt base base-devel linux linux-firmware

### Fstab
genfstab -U /mnt >> /mnt/etc/fstab

#doesn't work from here
### Chroot
arch-chroot /mnt

### Time Zone
ln -sf /usr/share/zoneinfo/Austrlia/Melbourne /etc/localtime
hwclock --systohc

### Localization
echo LANG=en_US.UTF-8 >> /etc/locale.conf

### Network configuration
echo arch >> /etc/hostname

### Root password
passwd
EOF


# LOL i give up for now
