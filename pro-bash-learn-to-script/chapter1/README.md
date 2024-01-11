## Hello, World: Your First Shello Program 

- `echo "$HOME"` == `pwd` == `echo $PWD` (Available on Unix System)
- `echo echo Hello, World > /home/pro-bash/hw` Add content 'echo Hello, World' to a file 'hw'
- *`Running bash file`*
    - bash {file_name}: `bash hw`
    - sudo chmod +x /home/pro-bash/hw and `./hw`
- *`Running only file name from dir /bin`*
    - sudo toch /bin/hw
    - `echo echo Hello, World > /bin/hw`
    - `sudo chmod +x /bin/hw` and `hw`
- *`Append content to a file with echo`* 
    - echo 'YOur content' >> {destination_file}
    - e.g: `echo "export PATH=$HOME/bpl/bin:$PATH" >> ~/.bashrc`

### *`Exercises`*
1. - `sudo mkdir -p $HOME/bpl`
    - `sudo mkdir -p $HOME/bpl/bin`
    - `sudo mkdir -p $HOME/bpl/scripts`
2. - `sudo touch $HOME/bpl/bin/hw1`
    - `echo echo Hello World. From File hw1 > $HOME/bpl/bin/hw1`
    - `sudo chmod +x $HOME/bpl/bin/hw1`
    - `$HOME/bpl/bin/hw1`
3. Execute `hw1` from anywhere 
    - `echo "export PATH=$HOME/bpl/bin:$PATH" >> ~/.bashrc`
    - `source ~/.bashrc` Relaod the shell