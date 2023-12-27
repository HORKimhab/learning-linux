## Chapter 3 Analyzing and Managing Networks

- ifconfig eth0 192.168.181.115: `Change network to 192.x.x.115`
- ifconfig eth0 192.168.181.115 netmask 255.255.0.0 broadcast 192.168.1.255: `Change network, netmask and broadcast`

To spoof your MAC address, simply use the ifconfig command’s down option to take 
down the interface (eth0 in this case). Then enter the ifconfig command followed by 
the interface name (hw for hardware, ether for Ethernet) and the new spoofed MAC address. 
Finally, bring the interface back up with the up option for the change to take place. 
Here’s an example:

- `ifconfig eth0 down`
- `ifconfig eth0 hw ether 00:11:22:33:44:55`
- `ifconfig eth0 up`

- dig: `DNS lookup utility`
- dnsspoof: `Tool dns spoof`

### Exercise 
- 1. `ifconfig`
- 2. `ifconfig etho 192.168.1.1`
- 3. Down eth0, change hardware and Up eth0 
    - `ifconfig eth0 down`
    - `ifconfig eth0 hw ether 00:12:22:33:44:55`
    - `ifconfig eth0 up`
- 4. `iwconfig`
- 5. Reset DHCP with new ip
    - `sudo dhclient -r {your new ip}`
- 6. `dig salacyber.com mx`
- 7. `cp /etc/resolv.conf /etc/resolv.conf-bak` (Backup before editing)
    - `echo "nameserver 8.8.8.8" > /etc/resolv.conf`