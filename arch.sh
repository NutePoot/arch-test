#!/bin/bash
 
#clear tty 
clear
  
#disk config
gdisk /dev/sda
o
n
2048
+512M
ef00
p
