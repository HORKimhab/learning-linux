## Chapter 11 The Logging System

### *The rsyslog Logging Daemon* 
- `syslogd`: If `-bash: syslogd: command not found`, need to install `rsyslog`

### *The rsyslog Configuration File*
`sudo nano /etc/rsyslog.conf`: Edit file `rsyslog.conf`

### *The rsyslog Logging Rules*
- `mail.* /var/log/mail`: This example will log mail events of all (*) priorities to /var/log/mail.
- `kern.crit /var/log/kernel`: This example will log kernel events of critical (crit) priority or higher to /var/log/kernel.

### *Automatically Cleaning Up Logs with logrotate*
- `sudo nano /etc/logrotate.conf`

For instance, if you check your log files every week and want to save storage space, you could change this setting to `rotate 1`. 

If you have plenty of storage for your logs and want to keep a semi-permanent record for forensic analysis later, 

you could change this setting to `rotate 26` to keep your logs for `six months` or `rotate 52` to keep them for one year.

`man logrotate`: logrotate more detail with manual document

### *Removing Evidence*
- `shred fileName`: Overwrite a file to hide its contents, and optionally delete it. 
- `shred -f -n 10 /var/log/auth.log.*`: shred file and overwrite content 10 times.

### *Disabling Logging*
`sudo service rsyslog {restart | status | stop}`

### Exercise 
- 1.`locate rsyslog`
- 2.`sudo sed -i 's/rotate 4/rotate 1/' logrotate.conf`
- 3.`sudo cp /etc/rsyslog.conf /etc/rsyslog.conf.backup`
- `sudo nano /etc/rsyslog.conf`: And check file `rsyslog.conf`
- `sudo service rsyslog restart`
- 4.`sudo shred -f -n 10 /var/log/kern.log` 
