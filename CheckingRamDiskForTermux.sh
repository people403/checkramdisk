#!/bin/bash

clear
echo "Checking if your device is using Ramdisk..."

# Periksa apakah rootfs adalah ramdisk (ini adalah indikasi awal bahwa ramdisk digunakan)
if grep -q "rootfs" /proc/mounts; then
    echo -e "\033[32mYour device is using Ramdisk as the root filesystem.\033[0m"
else
    echo -e "\033[31mYour device is NOT using Ramdisk.\033[0m"
fi

# Cek apakah initramfs ada di boot command line
if dmesg | grep -q "initramfs"; then
    echo -e "\033[32minitramfs is detected in boot log. This indicates Ramdisk usage.\033[0m"
else
    echo -e "\033[31minitramfs is NOT detected. Your device may not be using Ramdisk.\033[0m"
fi

# Periksa file '/proc/cmdline' untuk melihat parameter booting
echo "Checking boot parameters..."
if grep -q "init=/init" /proc/cmdline; then
    echo -e "\033[32minitramfs might be used as part of boot process (init=/init in cmdline).\033[0m"
else
    echo -e "\033[31mNo initramfs or rootfs parameters found in boot command line.\033[0m"
fi

# Output ramdisk status
echo ""
echo "Done! Your system is checked."
