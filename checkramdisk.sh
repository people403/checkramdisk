# Check Your Ramdisk/Nonramdisk
# Don't Modified Script Ramdisk
# Script By @magiskpeople
#!/bin/bash

clear
echo -n "Check /003[32mRamdisk/003[0m//003[31mNonramdisk /003[32mLoading..."

for i in $(seq 1 10); do
    echo -n ""
    sleep 0.5
done

clear
sleep 4
if grep -q "rootfs" /proc/mounts; then
    echo "\033[33mYour Phone \003[32mUse Ramdisk."
else
    echo "\033[32mYour Phone \033[31mNot Use Ramdisk."
fi
sleep 4
clear
echo "\033[32mDon't Forget Read \003[31mReadme \033[33mRamdisk/Nonramdisk"
sleep 4
clear
sleep 4
echo "\003[033[32mDone!"
