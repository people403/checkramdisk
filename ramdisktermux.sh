#!/bin/bash

clear
echo "Checking if your device is using Ramdisk..."
sleep 4

if grep -q "rootfs" /proc/mounts; then
    echo "\033[32mYour device is using Ramdisk as the root filesystem.\033[0m"
    sleep 4
else
    echo "\033[31mYour device is NOT using Ramdisk.\033[0m"
    sleep 4
fi

if dmesg | grep -q "initramfs"; then
    echo "\033[32minitramfs is detected in boot log. This indicates Ramdisk usage.\033[0m"
    sleep 4
else
    echo "\033[31minitramfs is NOT detected. Your device may not be using Ramdisk.\033[0m"
    sleep 4
fi

echo "Checking boot parameters..."
sleep 5
if grep -q "init=/init" /proc/cmdline; then
    echo "\033[32minitramfs might be used as part of boot process (init=/init in cmdline).\033[0m"
    sleep 4
else
    echo "\033[31mNo initramfs or rootfs parameters found in boot command line.\033[0m"
    sleep 4
fi

# Output ramdisk status
echo ""
echo "Done! Your system is checked."
sleep 4
