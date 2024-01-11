# Chapter 1

#### *`1.`*
- `modprobe`: Add and remove module from the Linux Kernel, `*Moduel Probe*`
- `lsmod`: Show the status of modules in Linux Kernel, `*List Module*`
- `insmod`: Simple program to isnert a module into the Linux Kernel, `Insert Module`
- `rmmod`: Remove a module from the Linux Kernel, `*Remove Module*`

#### *`2.`*
`To boot a Linux system into single-user mode using GRUB2, you can add the "single"` 

`option to the kernel command line in the GRUB2 boot entry configuration. Here's how you can do it:`

1. Access GRUB2 Configuration:

    During the boot process, you can often press a key (such as 'Shift' or 'Esc') to 
    
    interrupt the automatic boot sequence and access the GRUB2 menu.
2. Select the Boot Entry:
    
    Choose the boot entry you want to modify. It might be labeled as your Linux 
    
    distribution or a specific kernel version.
3. Edit the Boot Parameters:

    Press the 'e' key to edit the boot parameters for the selected entry.
4. Add "single" Option:

    Locate the line that starts with "linux" or "linuxefi" and contains the kernel 
    
    parameters. Add the word "single" (without quotes) at the end of this line. For example:

    `linux /boot/vmlinuz-<kernel-version> root=/dev/sda1 ro single`
5. Boot with Changes:

    Press 'Ctrl + X' to boot with the modified configuration.

The "single" option instructs the Linux kernel to boot into single-user mode, also known as maintenance or recovery mode. In single-user mode, the system starts with a minimal set of services, and you typically have a root shell prompt without requiring a password.

In this mode, you can perform system maintenance tasks, such as fixing file system issues or resetting passwords, because the system boots with the minimum necessary services running.

It's worth noting that these changes are temporary and will not persist across reboots unless you modify the GRUB2 configuration files. If you need to make the change permanent, you would need to update the GRUB2 configuration files accordingly.

#### *`3.`*
- `systemctl defaults`: Reset sysmlinks for the specified units to the default configuratio. 
- `update-rc.d defaults`: It is used to update the `System V init Scripts`, indicateing that a service should be started 

    or stoped in the specified runlevels. 
- `systemctl runlevel`: The concept of runlevels is more associated with traditional `SysVinit systems` rather than systemd.

- `systemctl get-default`: Display the current default target that systemd will start at boot. 

#### *`4.`*
- `lsusb`: List of USB devices connected to your system. 

#### *`5.`*
- `modprobe`: Add and remove module from the Linux Kernel, `*Moduel Probe*`
- `lsmod`: Show the status of modules in Linux Kernel | List of currently loaded Kernel modules, `*List Module*`

#### *`6.`*
- `/etc/efi`: The `/etc` directory typically contains configuration files of rsystem-wid settings.  
- `/efi`: Locate within `/etc`
- `/sys/efi`: The `/sys` is a virtual filesystem that exposes kernel-related information and configuration. 
- `/boot/efi`: It's correct and contains EFI boot loaders and related files used by UEFI firmware during the boot process. 

#### *`7.`*
- `mount /dev/sdb1 /media/usb`: Mounts the first partion (`/dev/sb1`) of the USB disk to the specified mount point (`/media/usb`)  
- `usbconnect /dev/sdb0 /media/usb`: Invalid command 
- `mount /dev/sdb0 /media/usb`: Mount entire disk 
- `usbmount /dev/sdb1 /media/usb`: Invalid command 

#### *`8.`*
- `One reason a device driver does not appear in the output of (lsmod), event thogh the device is loaded and working properly`

    Support fo the device has been compiled directly into the kernel. 

#### *`9.`*
- `rmmod -w`: The `-w` option makes `rmmod` wait until the module is no longer in used before unloading it.  

#### *`10.`*
- `update-grub`: Modify the GRUB configuration or afte a kernel update and placed in `/boot/grub/grub.cfg`
- `update-grub boot > /boot/grub.cfg`: Invalid command.
- `grub-rc.d`: Invalid command 
- `grub-boot`: Invalid command 

#### *`11.`*
The `Master Boot Record` (MBR) partitioning system is a traditional method used to divide a storage device into partitions and manage the boot process on a computer. MBR has been widely used in older systems, but it has some limitations, such as supporting a maximum of four primary partitions or three primary partitions and an extended partition. Here are some key points about the MBR partitioning system:

1. Partition Table:

    MBR uses a partition table located in the first sector (sector 0) of the storage device. This table holds information about the partitions on the disk, such as their size, type, and starting location.

2. Primary and Extended Partitions:

    MBR supports up to four primary partitions. However, if you need more than four partitions, you can create one of the primary partitions as an extended partition. The extended partition can then be subdivided into logical partitions.

3. Boot Loader:

    The MBR also contains a small piece of executable code known as the boot loader. The boot loader is responsible for loading the operating system from the designated bootable partition.

4. Limitations:

    MBR has limitations in terms of the number of partitions it can support, as mentioned earlier. Additionally, MBR supports disks with a maximum size of 2 terabytes (TB). Larger storage devices may require the use of the newer GUID Partition Table (GPT) format.

5. Compatibility:

    MBR is compatible with most operating systems, making it suitable for systems with legacy hardware and software. However, modern systems often use GPT due to its advantages, especially with larger disks.

6. MBR vs. GPT:

    GPT has become more prevalent in recent years due to its support for larger disk sizes, improved data integrity features, and more flexible partitioning options. GPT is often used in newer UEFI-based systems, while MBR is associated with older BIOS-based systems.

To interact with the MBR partitioning system on Linux, you can use tools such as `fdisk` or `parted`. Keep in mind that, when dealing with modern systems, you might encounter the GPT partitioning scheme more frequently.

#### *`12.`*
The file systems or partition types associated with the mentioned categories are:

1. Linux:

    - Linux typically uses various file systems, with the most common being:
        - Ext4: A widely used file system for Linux.
        - Ext3: An earlier version of Ext4.
        - Ext2: Another older version of the Ext file system.
2. Linux Swap:

    Linux Swap partitions are used for swap space, providing virtual memory support. They are not associated with a specific file system type. Instead, they are designated as swap space.

    e.g: `0x82` == `(8 * 16^1) + (2 * 16^0) = 128 + 2 = 130`
3. NTFS (`New Technology File System`):

    NTFS is a file system developed by Microsoft and is commonly used in Windows operating systems. It supports features such as file permissions, encryption, and compression.
4. FAT (`File Allocation Table`):

    - FAT is a family of file systems used in various versions of Windows and other operating systems. Common variations include:
        - FAT12: Used with floppy disks.
        - FAT16: Used in early versions of Windows and for small partitions.
        - FAT32: Widely used for removable storage devices and smaller hard drives.

When you create partitions on a storage device, you'll need to format those partitions with a specific file system. The choice of file system depends on the operating systems you plan to use and other considerations such as file system features, performance, and compatibility. The file system type is often specified during the partitioning and formatting process.

#### *`13.`*
- `/etc/default/grub`: Main configuration file for GRUB or you may also edit `/boot/grub/grub.cfg`
- `/etc/grub/boot`: Non-standard path.
- `/etc/boot/grub.d`: Directory containing modular configuration scripts for GRUB.
- `/grub.d/boot`: Non-standard path.

#### *`14.`* `grub2-mkcofig`
- `grub2-mkconfig -o FILE_PATH`: sudo grub2-mkconfig -o ~/grub.cfg

#### *`15.`*
`At least 1 GB.`

Allocating at least 1 GB for the /boot partition provides sufficient space to accommodate multiple kernel versions, initramfs files, and other related files. This ensures that you have ample space for future kernel updates and avoids running into issues with insufficient space in the /boot directory.

While the actual space required for /boot may vary based on the distribution and specific use case, a 1 GB partition size is a reasonable and commonly recommended choice to provide flexibility and avoid potential space constraints.

#### *`16.`* `LVM: Logical Volumne Management`
- `pvcreate`: Initializes a pysical volmne, preparing if for use in LVM. e.g: `pvcreate /dev/sdb1`
- `vgextend`: Adds one or more physical volumnes to an existing volume group, extending its storages capacity. `vgextend myvg /dev/sdc1`
- `lvcreate`: Create logical volumes within a volume group, specifying size and name. `lvcreate -L 10G -n mylv myvg`
- `pvs`: Displays information about physical volumnes, showing details like sizes, free spaces and volume group associations. 

#### *`17.`*
- `grub2-install /dev/sdb`: Install GRUB into the Master Boot Record (MBR) of the second SATA disk.

#### *`18.`*
- `lvcreate`: To create a logical volume with LVM. `lvcreate -L 10G -n my_logical_volume my_volume_group` This to create a logcial volume named `my_logical_volume` with a size 10 gigabytes (`-L 10G`) in the volume group `my_volume_group`

#### *`19.`*
- `LVM logical volume`: Physical volume creating, volume group creation, logical volume creation

#### *`20.`*
- `grub-mkconfig`: This should be run after making a change to the `/etc/default/grub` file. 

#### *`21.`*
- `pvcreate`: Prepares a physical disk for use with LVM. You need to specify the disk device identifier (e.g., /dev/sdb) after the command.
- `lvmcreate`: Creates a new volume group or extends an existing one. You need to specify the volume group name and other options like physical volumes to use.
- `lvcreate`: Creates a new logical volume within a volume group. You need to specify the volume group name, logical volume name, size, and other options.
- `lvchange`: Modifies attributes of an existing logical volume, such as resizing, renaming, or activating/deactivating it. You need to specify the logical volume name and the desired operation.
- `lvmscan`: Scans for and displays information about all existing LVM objects (physical volumes, volume groups, logical volumes).

#### *`22.`*
- `/dev/sda1` GRUB Legacy begins counting at 0 and separates the disk letter and partition with a comma, therefore making 0,0 the first partition on the first disk. Options A and C are not the first disk on the system, and option B contains a nonexistent partition.

#### *`23.`*
- `grub-install /dev/sda` Install GRUB into the amster boot record (MBR) of the first SATA `Serial Advanced Technology Attachment` drive. 

#### *`24.`*
- `yum install` Install a given package

#### *`25.`*
After a new hard drive is inserted into the system, what it the correct order to make the drive ready for use within Linux
- Use `fdisk` to create partions, then format the partions using a command ushc as `mkfs` and then mount the partions.

#### *`26.`*
- `rpm2cpio` is a utility that can extract the contents of an RPM `Read Hat Pacakge Manager` package without installing it. This can be useful for several reasons, such as

    - Inspecting the files in a package before installing it.
    - Copying individual files from a package to another location.
    - Creating a custom installation of a package by selecting only the files you need.

#### *`27.`*
The following describes a primary difference between `ext2` and `ext3` filesystems: 
- `ext3` includes journaling for the filesystem. 

#### *`28.`*
- `/etc` Configuration files for the entire system, like settings and applications. Think of it as the system control center. Need admin access to modify. 
- `/var` Data files that change and grow over time, like logs, emails and caches. Access depends on context. 
- `/tmp` Temporay files created by programs, deleted on reboot or program close. 
- `/opt` Third-party software packages, keeps files separate from the rest of the system.

#### *`29.`*
- `mount -a` mount all filesystems that are currently available in `/etc/fstab`
- `mound -f` mount with fake  

#### *`30.`*
- `systemctl enable` change a service so that runs on the next boot of the system. 

#### *`31.`*
`xfs_metadump` is a debugging tool used with the XFS filesystem on Linux systems. It allows you to  create a copy of the filesystem's metadata to a file. This metadata includes information about the files and directories stored on the filesystem, such as file names, access permissions, and block locations.
- `xfs_metadump -g` Display a progress indicator. 

#### *`32.`*
- `du` The system is running out of disk space within the home directory partion, and quotas have not been enabled.

#### *`33.`*
- The `/etc/fstab` file is used to store information about the filesystems to mount within the system. 
- The `systemd.mount` option refers to the configuration files used by systemd related to filesystems.

#### *`34.`*
- `/mediat` The proper mount point for removable media

#### *`35.`*
`lsscsi` is a command-line utility used on Linux systems to list information about SCSI devices attached to the system. SCSI stands for `Small Computer System Interface`, which is a standard for connecting storage devices like hard drives, SSDs, and optical drives to computers.

Therefore, the number of devices supported per bus varies significantly:
- 7 to 15 for early parallel SCSI
- 128 per initiator port for SAS
- Theoretically unlimited for iSCSI (network limitations apply)
