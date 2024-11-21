#!/usr/bin/python
# Dont Modified Script
# ©magiskpeople

import sys, os, time

# Important Package Feature
os.system("pkg install git -y")
time.sleep(2)
os.system("pkg install python -y")
time.sleep(2)
os.system("pkg install tsu -y")
time.sleep(2)

os.system("clear")
time.sleep(3)
def cek_ramdisk():
    has_ramdisk = False  # Inisialisasi variabel

    try:
        # Check 'ram' in direktori /dev
        if os.path.exists('/dev'):
            dev_files = os.listdir('/dev')
            has_ramdisk = any('ram' in f for f in dev_files)
            time.sleep(3)
            
        # access root only /proc/mounts
        if not has_ramdisk and os.path.exists('/proc/mounts'):
            with open('/proc/mounts', 'r') as mounts:
                for line in mounts:
                    if 'ram' in line:
                        has_ramdisk = True
                        break
    except PermissionError:
        time.sleep(3)
        print("Your Device Not Root To Checking /dev or /proc/mounts.")
        time.sleep(4)
    
    return has_ramdisk

if __name__ == '__main__':
    if cek_ramdisk():
        print("Your Phone Ramdisk Found :).")
        time.sleep(4)
        print("Complete Checking Ramdisk...")
    else:
        print("Your Phone Ramdisk Not Found :(.")
        time.sleep(4)
        print("Complete Checking Ramdisk...")
