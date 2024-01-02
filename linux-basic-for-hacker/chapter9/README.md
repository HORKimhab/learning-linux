## Chapter 9 Compressing and Archiving  

### Tar command 

- `tar -cvf HackersArise.tar hackersarise1 hackersarise2 hackersarise3`: Compress file1-3 as one file `HackersArise.tar`

- `-c`: Create a new archive.

- `-v`: Verbosely list the files processed.

- `-f`: Specify the name of the archive file.

- `tar -xvf HackersArise.tar`: Extract files, display all files 

- `tar -xvf HackersArise.tar -C /path/to/target_directory`: Extract file to your target_directory

- `tar -xf HackersArise.tar`: Extract files silently 

### Compress Files 

- `gzip`, which uses the extension `.tar.gz or .tgz`

- `bzip2`, which uses the extension `.tar.bz2`

- `compress`, which uses the extension `.tar.z`

In general, `compress` is the `fastest`, but the resultant files are `larger`

`bzip2` is the `slowest`, but the resultant files are the `smallest`

`gzip` falls somewhere in `between`

### *Compressing with gzip*

`gzip` is designed to compress individual files, not directories

- `gzip HackersArise.*`: Compress file 

- `gzip -d HackersArise.*`: Decompress file 

- `gunzip HackersArise.*`: Decompress file too

### *Compressing with bzip2*

`bzip2` is designed to compress individual files, not directories

- `bzip2 HackersArise.*`: Compress file 

- `tar cjvf archive.tar.bz2 your_directory`: Compress dir with tar to bzip2  

- `bzip2 -d HackersArise.*`: Decompress

- `bunzip2 HackersArise.*`: Decompress file too

### *Compressing with compress*

- `compress file`: Compress file 

- `uncompress file`: Decompress file 


### *`dd` command*

It’s critical to note that the dd command should not be used for typical day-to-day copying of files 

and storage devices because it is very slow

The basic syntax for the dd command is as follows:

`dd if=inputfile of=outputfile`

So, if you wanted to make a physical copy of your flash drive, assuming the flash drive is sdb 

`dd if=/dev/sdb of=/root/flashcopy bs=4096 conv=noerror -status=progress`

- `bs=4096`: Specifies the block size. This determines how much data is read or written in each operation. 

Here, it's set to 4096 bytes (4 KB).

- `conv=noerror`: This option instructs dd to continue copying even if it encounters 

read errors. It's often used when creating a copy of a device, and it allows `dd` to keep 

going even if it encounters unreadable sectors. Note that this doesn't fix the errors; 

it just allows dd to skip them and continue the process.

- `status=progress`: Track the progress
- `du -h filename`: Human reading file size

### Exercise 
- 1.Check files in direcotry `chapter9`
- 2.`tar -czvf L4H.tar.gz Linux4Hackers1.sh Linux4Hackers2.sh Linux4Hackers3.sh`
- `du -h Linux4Hackers1.sh Linux4Hackers2.sh Linux4Hackers3.sh` 
- `du -h L4H.tar.gz`
- 3.`gzip L4H.tar.gz`
- 4.` Repeat Exercise 3 using both bzip2 and compress.`: Do it your real practise`
- 5.`dd if=/dev/sdb of=/root/flashcopy bs=4096 conv=noerror status=progress conv=fsync`: Identify Devices with `lsblk`
- `conv=fsync`: Flushes the data to the output file after each write operation, ensuring data integrity.
