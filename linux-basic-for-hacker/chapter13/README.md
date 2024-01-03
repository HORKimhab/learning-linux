## Chapter 13 Becoming Secure and Anonymous

We look at how you can navigate the World Wide Web anonymously (or as close as you can get) using four methods

- `The Onion Network`
- `Proxy servers`
- `Virtual private networks`
- `Private encrypted email`

To see what hops a packet might make between you and the destination, you can use the traceroute command, as shown next. 

Simply enter traceroute and the destination IP address or domain, and the command will send out packets to the destination 

and trace the route of those packets with command (`traceroute google.com`)

- `sudo apt update && sudo apt install traceroute -y`: Install traceroute

### *Proxy*
- `proxychains < the command you want proxied> < arguments>`
- `proxychains nmap -sT -Pn <IP address>`

### *`Setting Proxy in the Config File`*
- `sudo apt update && sudo apt install proxychains -y`: Install proxychains
- `sudo nano /etc/proxychains.conf`
- `Free Proxy Website`: `https://hidemy.io/en/proxy-list`

### *Random Chaining* 
- `uncomment random_chain and chain_len` in /etc/proxychains.conf  

### *Security Concerns** 
- `Do not use free proxy`

### *

### *Exercise* 
- `Do it by your own`
