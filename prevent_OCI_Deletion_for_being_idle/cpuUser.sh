#!/bin/bash
now=$(date +%s)sec

x=0

while [ $x -le 100000 ]
do
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  echo $(( $RANDOM % 5000000000000 + 100000000000000000000 )) > /dev/null
  x=$(( $x + 1 ))
done

end=$(TZ=UTC date --date now-$now +%H:%M:%S.%N)


echo "operation took ${end} seconds" >> /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log