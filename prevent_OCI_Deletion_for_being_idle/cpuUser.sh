#!/bin/bash
now=$(date +%s)sec

x=0

while [ $x -le 50000 ]
do
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  x=$(( $x + 1 ))
done