# Check Your Ramdisk/Nonramdisk
# Don't Modified Script Ramdisk
# Script By @magiskpeople
#!/bin/bash

clear
echo -n "Checking Your Use Ramdisk/Nonramdisk Loading..."

for i in $(seq 1 10); do
    echo -n "."
    sleep 0.5
    # Menempatkan kursor di awal baris
    echo -ne "\rChecking Your Use Ramdisk/Nonramdisk Loading..."
done


clear
sleep 4

if grep -q "rootfs" /proc/mounts; then
    echo -e "\033[31mYour Phone Use Ramdisk. \n"
    echo \n
    echo -e "\033[31mIf There Are Bugs/Errors, Report Them To @magiskpeople Gmail \n"
else
    echo -e "\033[31mYour Phone Not Use Ramdisk. \n"
    echo -e "\033[31mIf There Are Bugs/Errors, Report Them To @magiskpeople Gmail\033[0m"
fi

sleep 10
clear
echo -e "Don't Forget Read Readme Ramdisk/Nonramdisk \n"
sleep 4
echo -e "Done!"
