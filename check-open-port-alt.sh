#!/bin/bash

if [ $# -lt 2 ]
then echo "Usage: check-open-port.sh <host or IP> <port>"
else nc -z -w 5 $1 $2 1>/dev/null 2>&1; result=$?
 if [ $result -eq 0 ]; then
     echo "$1:$2 is open for tcp connections"
 else
     echo "$1:$2 is closed"
 fi
fi
