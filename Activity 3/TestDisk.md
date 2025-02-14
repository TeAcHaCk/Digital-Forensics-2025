# Introduction to `TestDisk`  
`TestDisk` is a powerful, open-source data recovery tool designed to recover lost partitions and repair corrupted boot sectors. It works on various file systems (NTFS, FAT, ext2/ext3/ext4) and supports multiple operating systems, including Linux, Windows, and macOS.  

It is a command-line tool but provides a user-friendly text-based interface, making it easy to navigate. It is often used to:  
- Recover deleted partitions  
- Repair corrupted partition tables  
- Restore lost files from damaged or formatted disks  

---

## Installing `TestDisk`  

`TestDisk` is available in the default repositories of most Linux distributions.  

### **1. Debian-based distributions:**  
```shell
sudo apt update
sudo apt install testdisk
```

### **2. Arch-based distributions:**
```shell
sudo pacman -S testdisk
```

### **3. RPM-based distributions:**
```shell
sudo dnf install testdisk
```

### **4. Windows and MacOS(M1):**
Download the installer from the official [website](https://www.cgsecurity.org/wiki/TestDisk_Download)

## Launching TestDisk

To start `TestDisk`, open a terminal and run
```shell
sudo testdisk
```

TestDisk needs administrator privileges to access the storage devices, so we run the application with `sudo`

## Recovering a Lost Partition with TestDisk  

### Step 1: Select a Disk  

1. When TestDisk launches, select **Create** to start a new log file (recommended for documentation).  
2. Choose the disk you want to recover. (Make sure to select the correct one to avoid accidental changes.)  
3. Select **Proceed** and press `Enter`.  

---

### Step 2: Analyze and Search for Lost Partitions  

1. Select **Analyze** to scan the disk for lost partitions.  
2. If the partition table appears incorrect, choose **Quick Search** to find missing partitions.  
3. If nothing is found, use **Deeper Search** for an extensive scan.  

---

### Step 3: Write the Partition Table  

1. If the correct partition is found, select **Write** to save the changes.  
2. Confirm by pressing `Y` (Yes).  
3. Restart the computer for changes to take effect.  

---

## Recovering Deleted Files with TestDisk  

1. Instead of **Analyze**, select **Advanced**.  
2. Choose **Undelete** to scan for deleted files.  
3. Browse the file list and press `C` to copy the recovered files to another location.

---

## Disadvantages  

- **Command-Line Interface**  
  - Some users may find it intimidating, but it's straightforward once learned.  

- **No Selective File Recovery for NTFS**  
  - Unlike GUI-based tools, TestDisk recovers all deleted files at once.  

- **No Support for SSD TRIM Recovery**  
  - Files deleted on SSDs with TRIM enabled are often unrecoverable.  
