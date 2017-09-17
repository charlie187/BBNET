#!/bin/bash
curip=$(ifconfig | grep 'inet 192' | awk '{print $2}')
echo 'SFTPConnect to BBNET v1.2'
echo ''
if [[ $curip != '192.168.0.200' ]]; then
  echo ''
  echo 'Logging into BBNET'
  sftp -P 4447 -i /home/charlie187/.ssh/bbnet.key #remote IP goes Here
  exit
else
  sftp -P 4447 -i /home/charlie187/.ssh/bbnet.key 192.168.1.203
fi
