#!/bin/bash
#week 5 & 6 script review premidterm

#shows kernel log
/var/log/kern.log | less
#kernel boot parameters
cat /proc/cmdline
#find grub.cfg
cd /boot
ls
cd grub
grub.cfg | less
#generates a config file for grub.cfg
sudo grub-mkconfig -o /boot/grub/grub.cfg
#install grub onto your usb
sudo grub-install /dev/sdc
