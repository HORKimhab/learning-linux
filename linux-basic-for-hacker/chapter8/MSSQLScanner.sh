#! /bin/bash

# This script is designed to find hosts with MySQL installed

nmap -sT 192.168.181.0/24 -p 1433 >/dev/null -oG MSSQLscan

cat MSSQLscan | grep open > MSSQLscan2

cat MSSQLscan2