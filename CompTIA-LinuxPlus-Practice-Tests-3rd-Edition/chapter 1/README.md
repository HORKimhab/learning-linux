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
