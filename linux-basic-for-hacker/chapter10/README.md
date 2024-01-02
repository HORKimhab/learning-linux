## Chapter 10 Filesystem and Storage Device Management 

### *Device Directory `/dev`*
- `dev`: Device 

Here

The devices are displayed in alphabetical order by default. You may recognize some of the devices, 

such a cdrom and cpu, but others have rather cryptic names.

### *Drive Partitions*
- `sda1`: The first partition (1) on the first (a) SATA drive
- `sda2`: The first partition (2) on the first (a) SATA drive
- `sda3`: The first partition (3) on the first (a) SATA drive
- `sda4`: The first partition (4) on the first (a) SATA drive

`fdisk -l`: To view the partitions on your Linux system to see which ones you have and how much capacity 

is available in each. You can do this by using the fdisk utility. Using the -l switch with fdisk lists all 

the partitions of all the drives

`ext`: Extended filesystem

### *List Block Devices and Information with lsblk*

- `lsblk -l`

### *Mounting and Unmounting*
The two main mount points in Linux are /mnt and /media. As a convention, devices such as external USB devices 

and flash drives can be manually mounted at /mnt, but when automatically mounted, the /media directory is used 

(though technically any directory can be used)

- `mount /dev/sdb1 /mnt`
- `mount /dev/sdc1 /mnt`

The filesystems on a system that are mounted at boot-time are kept in a file at `/etc/fstab` (short for filesystem table), 

which is read by the system at every bootup

### *Unmounting with umount*
- `umount` == `Eject in window before removing Flash Drive`

### *Getting Information on Mounnted Disks*
- `df`: Disk free

### *Checking for Errors*
- `fsck`: 
- `fsck -p /dev/sdb1`: Add the -p option to have fsck automatically repair any problems with the device

### Exercise 
- 1.`lsblk`
- `sudo mkdir /mnt/flashDrive`
- `sudo mount /dev/sdX1 /mnt/flasDrive`: sdX1 is your paritiion like (sda1, sdb1, sdc1,...etc).
- `sudo umont /mnt/flasDrive`
- 2.`df -h`
- 3.`sudo fsck -y /dev/sdX1 | fsck`: -y option to automatically repair the filesystem without prompting. 
- 4.`sudo dd if=/dev/sdX of=/mnt/flashDrive bs=4M status=progress conv=fsync`
- 4.`lsblk`
