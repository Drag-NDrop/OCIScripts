#!/bin/bash
cd "$(dirname "$0")" || exit

/bin/bash cpuUser.sh & disown

x=0
currentCpuLoad=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]

while :
do
  if [ $currentCpuLoad -le 10 ]
  then
    while [ $x -le 10 ]
    do
      #for memory drain enable this instead     /bin/bash ./cpuUserArray.sh & disown
      /bin/bash cpuUser.sh & disown
      x=$(( $x + 1 ))
    done
    x=0
    currentCpuLoad=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]
    echo $currentCpuLoad
  fi
done