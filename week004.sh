 #!/bin/bash
#week 4 scripts - midterm review

#shows manual of udevadm (udev management tool)
man udevadm
#shows partition table
sudo fdisk -l /dev/sda
#create a partition & filesystem
dd if=/dev/zero of=./12MB.img bs=1M count=12
hexdump ./12MB.img | less
#make the filesystem ext4
mkfs -t ext4 ./12MB.img
#create mount point
sudo mkdir /media/tmp2
sudo mount ./12MB.img /media/tmp2
mount; df -h
lsblk
#input content into file
cd /media/tmp2
echo "Hello World" > ~/hello12.txt
#unmount image (had to kill mount point before unmounting)
sudo fuser -km /media/tmp2
sudo umount /media/tmp2
#look through file with output set to hex and ASCII
hexdump -C ./12MB.img | less
