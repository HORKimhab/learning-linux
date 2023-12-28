## Chapter 6 Process Management 

`ps`: See what processes are active

`ps aux`: show all processes running on the system for all users

`ps aux | grep msfconsole`: Show all processes of Metaspolit exploitation framework

`top`: Display the processes ordered by resources used, starting with the largest

`ls s*`: List all start with s

`nice`: Run a program with modified scheduling priority

`renice`: Alter priority of running processes

`top` and press `r`: Set value to nice 

`renice {PID} {value}`

### Killing Processes

`killall -9 rogueprocess`: A command used to forcefully and immediately terminate all processes with the name "rogueprocess" 
by sending the SIGKILL signal to them. It should be used with caution because it doesn't allow processes to perform any 
cleanup operations before termination

`at 7:20am`

`at > /root/myScanningScript`

This code snippet will schedule myscanningscript to execute today at 7:20 AM. When you want to stop entering commands, hit CTRL-D.

### Exercise 
- 1.`ps aux`: pid 1 is first and 1231 is last
- 2.`top`: pid 1 and 4 
- 3.`kill -9 1 4`
- 4.`sudo renice +19 {PID}`: sudo renice +19 1104
- 5.`touch +x myScanning.sh`

`echo '#!/bin/bash' > myScanning.sh.sh`

`echo 'echo "Hello Universe"' >> myScanning.sh`

`at 1:00am next wednesday -f myScanning.sh`


