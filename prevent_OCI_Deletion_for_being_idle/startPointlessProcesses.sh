#!/bin/bash
          cd /home/ubuntu/prevent_OCI_Deletion_for_being_idle/cpuOnly

          /bin/bash cpuUser.sh & disown

x=0
currentCpuLoad=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage}')

if [ $currentCpuLoad < 5 ]
then
        while [ $x -le 10 ]
        do
#for memory drain enable this instead     /bin/bash ./cpuUserArray.sh & disown
          /bin/bash cpuUser.sh & disown
          x=$(( $x + 1 ))
        done
fi


log_size_kb=`du -k /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log | cut -f1`
if [ $log_size_kb -ge 1000 ]
then
  echo "" > /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log
  echo "CPU Waster solution:: cleaned logfile"
fi
