import sys, os, time

os.system("clear")
def cek_ramdisk():
    has_ramdisk = False  # Inisialisasi variabel

    try:
        # Check 'ram' in direktori /dev
        if os.path.exists('/dev'):
            dev_files = os.listdir('/dev')
            has_ramdisk = any('ram' in f for f in dev_files)
            
        # access root only /proc/mounts
        if not has_ramdisk and os.path.exists('/proc/mounts'):
            with open('/proc/mounts', 'r') as mounts:
                for line in mounts:
                    if 'ram' in line:
                        has_ramdisk = True
                        break
    except PermissionError:
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
