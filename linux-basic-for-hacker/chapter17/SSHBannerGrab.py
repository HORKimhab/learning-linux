#!/usr/bin/python3

import socket

# Ports to check
ports = [21, 22, 25, 3306]

# Target IP address
target_ip = "192.168.1.101"

# Iterate through the ports
for port in ports:
    # Create a socket object
    s = socket.socket()

    # Display the port number
    print('This is the banner for Port:', port)

    # Connect to the target IP and port
    s.connect((target_ip, port))

    # Receive data from the socket
    answer = s.recv(1024)

    # Print the received data (banner)
    print(answer.decode('utf-8'))

    # Close the socket
    s.close()
