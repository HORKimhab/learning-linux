## Chapter 4 Adding and Removing Software 

### Install software with `apt install`

- `apt-cache search snort`: Check pacakage `snort` before download
- `sudo apt install snort`: Install pacakge `snort`
- `sudo apt remove snort`: Remove pacakge `snort`
- `sudo apt purge snort`: Remove package and configuration at the same time

The apt autoremove command in Linux, specifically on Debian-based systems like Ubuntu, 
is used to remove packages that were installed as dependencies for other packages 
but are no longer needed. It helps to clean up the system by removing packages 
that were installed as dependencies for other packages, and now those dependencies are no longer required.
- `sudo apt autoremove snort`

- `sudo apt update`
- `sudo apt upgrade`
- If the pacakge there is not in `sources.list`, add ubuntu pacakge to it yet must backup `sources.list` before edit
    `cp /etc/apt/sources.list /etc/apt/sources.list-bak`


### Install Software with git 

### Exercise 
- 1.`sudo apt install sqlmap`
- 2.`sudo apt autoremove sqlmap`
- 3.`sudo apt update`
- 4.`sudo apt upgrade`
- 5.`git clone https://github.com/sleuthkit/autopsy.git`