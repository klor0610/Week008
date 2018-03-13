 #!/bin/bash
#week 4 scripts - midterm review

#shows manual of udevadm (udev management tool)
echo "lets take a look at the manual pages for udevadm"
sleep 4s
man udevadm
#shows partition table
sudo fdisk -l /dev/sda
sleep 4s
#create a partition & filesystem
dd if=/dev/zero of=./12MB.img bs=1M count=12
hexdump ./12MB.img | less
sleep 3s
#make the filesystem ext4
mkfs -t ext4 ./12MB.img
#create mount point
sudo mkdir /media/tmp2
sudo mount ./12MB.img /media/tmp2
mount; df -h
sleep 2s
lsblk
#input content into file
cd /media/tmp2
echo "Hello World" > ~/hello12.txt
cd ~
sudo umount /media/tmp2
#look through file with output set to hex and ASCII
hexdump -C ./12MB.img | less
