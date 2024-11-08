# CHECKRAMDISK EFFECTIVE 
RAMDISK SCRIPT EFFECTIVE 🔥

This script is effective for checking whether the root partition is using the RAM disk or not, but there are some limitations and conditions to note: 

1. Using Rootfs as an Indicator: This script checks for the presence of "rootfs" in the /proc/mounts file. In some Linux systems, including Android, "rootfs" can be used as an indicator that the root partition is loaded into the RAM disk. If found, this script will assume that the root partition is using the RAM disk.

2. Installing on System Configuration: Not all operating systems and devices use "rootfs" in the root partition for RAM disk. Some systems may use other names or not have a RAM disk installed for root, so the script may not be accurate on all devices or Linux distributions.

4. Effectiveness on Android: On some versions of Android, especially on devices that use initramfs or ramdisk for the boot process, this script will work well. However, on devices that do not use a ramdisk for the root partition, this script will report "not using ramdisk". Alternative RAM Disk Check If you want to confirm disk RAM usage for a particular partition, you can also check the filesystem type used for that partition in /proc/mounts.

## WHY?! MAGISK DETECT RAMDISK YES/NO
There are several reasons why Magisk may detect the RAM disk as "yes" even though you see ext4 as the root file system. Why Does Magisk Show RAM Disk as "Yes"?

1. Kernel Boot Image: Android uses the boot.img file to start the boot process. This file often contains a compressed ramdisk, which loads some temporary file system when the device boots. Even though the root system uses ext4, Android still has a ramdisk in boot.img to load necessary files and kernel modules before mounting the actual root partition.

2. Dual Root with Initramfs: Many Android devices use initramfs in the ramdisk as initial root (initial root) to initialize some configurations before loading the actual root system. Magisk leverages access to this initramfs to install modifications, so as long as the initramfs is in boot.img, Magisk will detect it as a RAM disk: yes.

3. Modifications and Root Access: Since Magisk needs to run its modules before the root system finishes loading, it adds scripts to the ramdisk (if it has one). So, even though the root partition actually uses ext4, the presence of a ramdisk in the boot image still makes it detected. In conclusion ext4 as root in /proc/mounts means your root system is not running from a RAM disk. RAM disk: yes in Magisk simply shows that the ramdisk is present in boot.img, and this is enough for Magisk to inject its modifications during the boot process.

## If Magisk detects RAM disk: "no", it means your device does not have a ramdisk in boot.img
This usually happens on Android devices that use the A/B partition scheme and boot the system directly from the root partition which is formatted as ext4 or f2fs. On devices like this, the boot process does not require a ramdisk because the root system is loaded directly. However, Magisk can still work on devices without a RAMdisk. Here's how Magisk handles it: How Magisk Works with RAM Disk: No 

1. Modify Recovery Partition: If the ramdisk is not in the boot partition, Magisk will often use the recovery partition as a substitute. In this mode, Magisk injects its modifications into recovery.img. When the device boots, Magisk will "trick" the device into entering recovery mode which has been modified by Magisk, and then switch the boot to the normal system. This allows Magisk to install root and its modules even if there is no ramdisk.

2. Limitations on Some Features: If Magisk works without a ramdisk, certain features that normally depend on ramdisk initialization may not work or require a different method. However, for most root and modification functions, Magisk still works normally.

3. Special Conditions for A/B Devices: On A/B devices that don't have a RAM disk, Magisk attaches the modification directly to the recovery partition or vbmeta partition to enable root. Conclusion If Magisk detects RAM disk: no: This is normal for many modern devices, especially those using the A/B partitioning scheme. Magisk will switch to using the recovery partition or another method to carry out the modifications. Most of Magisk's features will still function properly even without a RAMdisk.

## HOW TO MODIFIED RAMDISK?!
Changing the setting to have Magisk detect "RAM disk: yes" on an Android device is actually quite difficult and often unnecessary, especially on devices that use an A/B partition scheme without a ramdisk. Here are some things to consider:

1. Using a Custom Kernel with Ramdisk

Some custom kernels allow loading ramdisks even on devices that don't normally have ramdisks in the boot image.

You can find a custom kernel that is designed for your device and supports ramdisks. However, this requires knowledge of kernel flashing and is also risky, as it can cause bootloops or other issues if the kernel is incompatible.

2. Modifying the Boot Image (For Experienced Users Only)

In theory, you could try creating a custom boot image with a ramdisk in it, but this is complicated and risky.

The steps involve:

Extracting the boot.img,

Creating or adding a ramdisk to the boot image,

And flashing the modified boot.img again.

However, this is not an easy solution and can cause the device to not boot (bootloop) if not done correctly.

3. Using Magisk in Recovery Mode

If your goal in using Magisk is to get root access and modules, Magisk automatically adjusts the way it does this. On devices without a ramdisk, Magisk modifies the recovery partition instead, so you can still get root access and use modules.

This mode is a safe and effective alternative without requiring complex modifications to the boot image.

4. Check for Support from Custom ROM or Kernel Developers

Some Custom ROM or kernel developers may have solutions to provide a ramdisk on certain devices.

Joining a forum like XDA Developers for your device can help, as the community there often shares custom solutions to this kind of problem.

Conclusion

Changing the status of "RAM disk: no" to "yes" on a device without a ramdisk is actually unnecessary, unless you really need a ramdisk for a special function. Magisk itself is smart enough to work without a ramdisk by modifying the recovery partition. However, if you want to experiment, make sure to make a full backup and understand the risks, because a small mistake can cause the device to bootloop.

## Run Script With Termux/Terminal
- allow root for termux
- pkg install git -y
- pkg install python -y
- pkg install tsu -y
- git clone https://github.com/people403/checkramdisk
- tsu
- ls
- cd checkramdisk
- ls
- python effectiveramdisk.py
- done!
