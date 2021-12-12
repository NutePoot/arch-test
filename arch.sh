#!/bin/bash
 
#clear tty 
  clear
  
#disk config
print "Disk Configuration"
select ENTRY in $(lsblk -dpnoNAME|grep -P "/dev/sd|nvme|vd");
do
    DISK=$ENTRY
    print "Installing Arch Linux on $DISK."
    break
done
