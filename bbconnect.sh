#!/bin/bash
curip=$(ifconfig | grep 'inet 192' | awk '{print $2}')
echo 'Connect to BBNET v1.2'
echo ''
if [[ $curip != '192.168.0.200' ]]; then
  echo ''
  echo 'Logging into BBNET'
  ssh -i /home/charlie187/.ssh/bbnet.key -p 4447 #IP GOES HERE
  exit
else
  echo ''
  echo 'Logging into BBNET'
  ssh -i /home/charlie187/.ssh/bbnet.key -p 4447 192.168.1.203
fi
