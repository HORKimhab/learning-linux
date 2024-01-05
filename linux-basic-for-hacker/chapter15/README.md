## Chapter 15 Managing The Linux Kernel and Loadable kernel Modules 

- `MITM`: Man In The Middle
- `uname -a`: List kernel version
- `cat /proc/version`: List kernel version also

### *Kernel Tuning with `sysctl`*
- `sudo nano /etc/sysctl.conf`: Permanent changes kernel, customize file `sysctl.conf` with carefully (Or backup file with `cp`)

- `sysctl -a | less`
- `sysctl -a | grep ipv4 | less`
- `sysctl -w net.ipv4.ip_forward=1`: To enable IP forwarding, change the 0 to a 1 

### *Managing Kernel Modules*
- `lsmod`: List Modules in kernels 

### *Finding More Information with `modinfo`*
- `modinfo bluetooth`

### *Adding and Removing Modules with modprobe* 
- `modprobe -a {moduleName}`: Add module 
- `modprobe -r {moduleName}`: Remove module 

### *Inserting and Removing a Kernel module* 
- `dmesg | grep {moduleName}`: 

### *Exercise* 
- 1.`uname -a`
- 2.`lsmod`
- 3.`sudo nano /etc/sysctl.conf` and add `net.ipv4.ip_forward = 1`
    
    `sudo sysctl -p`: To apply file change
- 4.Comment `net.ipv4.ip_forward = 1` at file `/etc/sysctl.conf` and `sudo sysctl -p`  
- 5.`modinfo bluetooth`
