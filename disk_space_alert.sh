#!/bin/bash
dusage=$(df -h | grep /media | awk '{ print $5 }' | awk -F'%' '{ print $1 }')
if [ $dusage -ge 90 ]; then
  echo "Disk Space on $(hostname) at $(date) is $dusage" | mail -s "Disk Space Alert on Jenkins Master" amohammed@presto.com
else
  echo "Disk usage is in under 90%"
fi


#echo "Here add your email body" | mail -s "Here specify your email subject" abdul.waheed9227@gmail.com






##!/bin/sh
#dusage=$(df -Ph | grep -vE '^tmpfs|cdrom' | sed s/%//g | awk '{ if($5 > 60) print $0;}')
#fscount=$(echo "$dusage" | wc -l)
#if [ $fscount -ge 2 ]; then
echo "$dusage" | mail -s "Disk Space Alert On $(hostname) at $(date)" example@gmail.com
else
#echo "Disk usage is in under threshold"
#  fi
#
#


