#!/bin/bash
now=$(date +%s)sec
x=0
declare -A pointlessNumbersArray

while [ $x -le 100000 ]
do
  currentArrayLength=${#pointlessNumbersArray[@]}
  newArrayLength=$(( currentArrayLength + 1 ))
  pointlessNumbersArray[$newArrayLength]+=$(( $RANDOM % 5000000000000 + 100000000000000000000 ))
  x=$(( $x + 1 ))
done