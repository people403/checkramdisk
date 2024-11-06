# Check Your Ramdisk/Nonramdisk
# Don't Modified Script Ramdisk
# Script By @magiskpeople
#!/bin/bash

clear
echo -n "Checking Use Ramdisk/Nonramdisk..."

for i in $(seq 1 10); do
    echo -n "."
    sleep 0.5
done


clear
sleep 4

if grep -q "rootfs" /proc/mounts; then
    echo "\033[31mYour Phone Use Ramdisk. \n"
    echo "\033[31mIf There Are Bugs/Errors.\n"
    echo "Report Them To @magiskpeople Gmail. \n"
else
    echo "\033[31mYour Phone Not Use Ramdisk. \n"
    echo "\033[31mIf There Are Bugs/Errors.\n"
    echo "Report Them To @magiskpeople Gmail. \033[0m"
fi

sleep 10
clear
echo "Don't Forget Read Readme Ramdisk/Nonramdisk \n"
sleep 4
echo "Done!"
