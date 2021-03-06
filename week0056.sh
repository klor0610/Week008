#!/bin/bash
#week 5 & 6 script review premidterm

#shows kernel log
cat /var/log/kern.log | less
#kernel boot parameters
cat /proc/cmdline
#find grub.cfg
cd /boot
ls
cd grub
less grub.cfg
#generates a config file for grub.cfg
sudo grub-mkconfig -o /boot/grub/grub.cfg
#install grub onto your usb
sudo grub-install /dev/sdc
