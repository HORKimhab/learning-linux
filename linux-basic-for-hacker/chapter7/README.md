## Chapter 7 Managing User Environment Variables 

`env`: List all default environment (also `printenv`)

`set | grep HISTSIZE`: Filter `HISTSIZE` environment

`HISTSIZE=0`: The `HISTSIZE` variable to 0 so the system won’t store any of your past commands.

When you change an environment variable, that change only occurs in that particular environment; in this case, that environment is the bash shell session. This means that when you close the terminal, any changes you made are lost, with values set back to their defaults. 

### *Making Variable Value Changes Permanent*

`echo $HISTSIZE> ~/valueofHISTSIZE.txt`

`set> ~/valueofALLon01012019.txt`: List all environment in file `valueofALLon01012019.txt`

`HISTSIZE=1000`

`export HISTSIZE`

`HISTSIZE` is 1000 permanently. 

### *Adding to the PATH Variable*

`PATH=$PATH:/root/newhackingtool`: Add to path and use it not navigate to /root/newhackingtool

`export PATH=$(echo $PATH | sed -e 's/:\/root\/newhackingtool//g' -e 's/::/:/g' -e 's/:$//')`: Remove `/root/newhackingtool` from `PATH`

`NEWMYVARIABLE1=This is my new variable 1.`: Set `NEWMYVARIABLE1` as variable

`echo $NEWMYVARIABLE1`: Out a new variable 

`unset NEWMYVARIABLE1`: Delete a variable 

### Exercise 
- 1.`set | more`
- 2.`echo $HOSTNAME`
- 3.`nano pSTest.sh` and add this content 

`pSTest.sh`

#!/bin/bash

original_prompt='PSTEST=\[\e]0;\u@\h:'

modified_prompt=$(echo -e "$original_prompt" | sed 's/\\/\//g; s/\[/\/[/g; s/\]/\/]/g')

echo "$modified_prompt"

`pSTest.sh`

`sudo chmod +x pSTest.sh`: Set excute permission
`./pSTest.sh`: Run script file 

- 4.`MYNEWVARIABLE="Kali Root"`
- 5.`echo $MYNEWVARIABLE`
- 6.`export MYNEWVARIABLE`
- 7.`echo $PATH`
- 8.`export PATH=$PATH:$HOME`
- 9.`PS1="WORLD Greatest Hackers."`: Don't run this on your real pc
    
    `export PS1`