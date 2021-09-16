#!/bin/bash
CURRENT=$(df -h | grep '/mnt' | awk '{ print $5 }' | sed 's/%//g')
THRESHOLD=10
pdns=`curl http://169.254.169.254/latest/meta-data/public-hostname`
if [ "$CURRENT" -gt "$THRESHOLD" ];
then
  mail -s "Disk Space Usage Exceeded $THRESHOLD% on jenkins-linux-1($pdns),
  this is a test email, please ignore" -t "devops@presto.com,infra@presto.com,production-webservice-aaaaefdohehdhoq36mhrcg5kmu@elacarte.slack.com,amohammed@elacarte.com" << EOF
  The current disk space usage on $pdns is $CURRENT%
EOF
fi

#m_c=`curl http://169.254.169.254/latest/meta-data/public-hostname`

##!/bin/bash
#CURRENT=$(df /media | grep /media | awk '{ print $5 }' | sed 's/%//g')
#THRESHOLD=89
#if [ "$CURRENT" -gt "$THRESHOLD" ];
#then
#  mail -s
#  'WARNING: Disk Space Alert - jenkins-master'
#   # shellcheck disable=SC1073
#   devops@presto.com,infra@presto.com,production-webservice-aaaaefdohehdhoq36mhrcg5kmu@elacarte.slack.com <<EOF
#   AUTOMATED MESSAGE: Your disk space remaining on jenkins-master is critically low. Used: $CURRENT%
#   # shellcheck disable=SC1039
#   EOF
#   fi

0 * * * * bash disk_space_alert.sh ~root >> ~root/disk_space_alert_cronjob.log 2>&1
