#!/bin/bash
#week3
#dump blah blah into the null- output is disposed of
echo "blah blah" > /dev/null
cd /dev
ls -l | less
echo "press enter to see block devices"
reach enter
#shows block devices and file systems
lsblk --fs
sleep 5s
#create an empty file
cd ~; pwd; dd if=/dev/zero of=./empty.file bs=1M count=1
#turns contents of file into hexidecimal
sleep 5s
hexdump -x empty.file
#dmesg shows all kernel messages, grep sd will show all kernel
#messages with sd
sleep 5s
dmesg | grep sd
