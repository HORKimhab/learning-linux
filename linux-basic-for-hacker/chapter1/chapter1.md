## Chapter 1 Getting Started with bas Basics 

- pwd: `Return your location within the directory structure`
- man: `An interface to the system reference manuals`
- which 
- whereis 
- find / -type f -name apache2 
    - `/ -type f: Which file to search f for ordinary file`
    - `-name: file to search`
    - `apache2: file name to search`
    - `apache2.: find a file contain with . eg: apache2.conf, apache2.txt`
    - `apache2.*: find a file dont' know extension`
- ps aux: `specifiy which process information to display`
- ps aux | grep apache2: `search process of apache2`
- cat file_name: `Display the content file`
- cat > fileName1: `Add your content to fileName1, save it with Ctrl + D`
- cat >> fileName1 `Append more content to fileName1, save it with Ctrl +D`

### Here `Linux once again goes into interactive mode, waiting for content to append to the`
- touch
- mkdir 
- cp 
- mv 
- rm -r directory: `Remove a directory and its content all`

### Exercise 
- ls  
- whoami 
- locate | which | whereis 
- cat > newFile1
- cat >> newFile1 
- mkdir hackerDir && touch hackerFile 
- cd hackerDir && cp /root/secretFile