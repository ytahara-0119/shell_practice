#!/bin/bash

#provide one word/sentence as an argument to the script. If in that sentence will be ip address,
#find out, if that ip address is reachable or not.

#argument check
if [ $# -ne 1 ]; then
	echo "Provide exactly one argument e.g. $0 argument"
	exit 1
fi

VAR1=$1
#ip address regex 127.0.0.1
REGEX="[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"

#regex check
if ! [[ $VAR1 =~ $REGEX ]]; then
	echo "No IP address provided"
	exit 2
fi

IP=${BASH_REMATCH[0]}
echo $IP

#find if ip address is reachable or not
ping -c1 $IP 1>/dev/null
if [ $? -eq 0 ]; then
	STATUS="ALIVE"
else
	STATUS="DEAD"
fi

echo "IP found: $IP ($STATUS)"

