# Check Your Ramdisk/Nonramdisk
# Don't Modified Script Ramdisk
# Script By @magiskpeople
# Update Version 2.0
#!/bin/bash

clear
echo -n "Checking Your Use Ramdisk/Nonramdisk Loading..."

for i in $(seq 1 10); do
    echo -n "."
    sleep 0.5
done

clear
sleep 4

if grep -q "rootfs" /proc/mounts && grep -q " ext4 " /proc/mounts; then
    echo "\033[31mYour Phone Use Ramdisk with ext4 filesystem. \n"
    echo "\033[31mIf There Are Bugs/Errors. \n"
    echo "\033[31mReport Them To @magiskpeople Gmail. \n"

elif grep -q "rootfs" /proc/mounts && grep -q " xfs " /proc/mounts; then
    echo "\033[31mYour Phone Use Ramdisk with xfs filesystem. \n"
    echo "\033[31mIf There Are Bugs/Errors.\n"
    echo "\033[31mReport Them To @magiskpeople Gmail. \n"

elif grep -q "rootfs" /proc/mounts && grep -q " btrfs " /proc/mounts; then
    echo "\033[31mYour Phone Use Ramdisk with btrfs filesystem. \n"
    echo "\033[31mIf There Are Bugs/Errors. \n"
    echo "\033[31mReport Them To @magiskpeople Gmail. \n"

else
    echo "Your Phone Not Use Ramdisk or Not using ext4, xfs, or btrfs."
fi

sleep 10
clear
echo "Don't Forget Read Readme Ramdisk/Nonramdisk. "
sleep 4
echo "Done!"
