#!/bin/bash

x=0
while [ $x -le 5 ]
do
  bash /home/ubuntu/prevent_OCI_Deletion_for_being_idle/cpuUser.sh & disown
  x=$(( $x + 1 ))
done

log_size_kb=`du -k "/home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log" | cut -f1`

if [ $log_size_kb -ge 1000 ]
then
 echo "" > /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log
 echo "cleaned logfile"
fi
