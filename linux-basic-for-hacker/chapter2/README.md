### Chapter 2: Text Manipulation

- snort: `Manipulate text in Ubuntu is owned by Cisco`
- `Must install snort in Kali WSL cos I'm using Kali WSL`
- Install snort from Source code: `Find Method 3`
    - Ref: https://distroid.net/install-snort-on-ubuntu
- `*** I prefer to use snort on Ubuntu instead...`
- head file: `Output 10 lines contents`
- head -{integerNumber} file: `Output {number} lines contents`
    e.g: head -20 /etc/snort/snort.conf
- tail: `Similar to head yet output 10 lines default content`
- nl: `Like 'cat' and more with number line`
- cat /etc/snort/snort.conf | grep output: `Display content and filter the word 'output'`


- `sed s/mysql/MySQL/g /etc/snort/snort.conf > snort2.conf`

The s command performs the substitution: you first give the term you are searching for (mysql) and then the term you want to replace it with (MySQL), separated by a slash (/). The g flag tells Linux that you want the replacement performed globally. Then the result is saved to a new file named snort2.conf.

- `sed s/mysql/MySQL/ snort.conf > snort2.conf`: `Replace mysql with MySQL first occurrence`

- `sed s/mysql/MySQL/2 snort.conf > snort2.conf`
- more: `file perusal filter for crt viewing`
- less: `opposite of more`

### Exercise 
- Install metasploit-framework: `sudo apt install metasploit-framework`
- 1. cd /usr/share/metasploit-framework/data
- 2. cat password.lst
- 3. more password.lst 
- 4. less password.lst 
- 5. nl password.lst 
- 6. tail -20 password.lst 
- 7. cat password.lst | grep 123 
- nl password.lst | grep khmer (`Search a word khmer and line number`)