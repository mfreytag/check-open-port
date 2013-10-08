#!/bin/bash



nc -z -w 5 $1 $2 1>/dev/null 2>&1; result=$?;
 if [ $result -eq 0 ]; then
     echo 'the port is open for tcp connections'
 else
     echo 'the port was closed'
 fi


