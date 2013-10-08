#!/bin/bash

if [ $# -lt 3 ]
then echo "Usage: check-open-port-range.sh <host or IP> <minport> <maxport>"
else for ((counter=$2; counter<=$3; counter++)) do nc -z -w 5 $1 $counter 1>/dev/null 2>&1; result=$?
 if [ $result -eq 0 ]; then
     echo "$1:$counter is open for tcp connections"
 else
     echo "$1:$counter is closed"
 fi
 done
fi
