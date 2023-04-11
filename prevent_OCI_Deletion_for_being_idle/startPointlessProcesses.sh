#!/bin/bash

# Run this script using a "screen" (# apt install screen) ($ man screen)

cd "$(dirname "$0")" || exit

currentCpuLoad=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]

while :
do
  if [ $currentCpuLoad -le 20 ]
  then
    /bin/bash cpuUser.sh
    currentCpuLoad=$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]
#    echo $currentCpuLoad
  fi
done