# Check Your Ramdisk/Nonramdisk
# Don't Modified Script Ramdisk
# Script By @magiskpeople
#!/bin/bash

clear
echo -e -n "Check \003[32m Ramdisk \003[0m / \003[31m Nonramdisk \003[32 mLoading..."

for i in $(seq 1 10); do
    echo -n ""
    sleep 0.5
done

clear
sleep 4
if grep -q "rootfs" /proc/mounts; then
    echo -e "\033[33m Your Phone \003[32m Use Ramdisk."
    echo -e "\003[31m If there are bugs/errors, \003[32m report them to @magiskpeople gmail"
else
    echo -e "\033[32m Your Phone \033[31mNot Use Ramdisk."
    echo -e "\003[31m If there are bugs/errors, \003[32m report them to @magiskpeople gmail"
fi
sleep 4
clear
echo -e "\033[32m Don't Forget Read \003[31m Readme \033[33m Ramdisk/Nonramdisk"
sleep 4
clear
sleep 4
echo -e "\003[32mDone!"
