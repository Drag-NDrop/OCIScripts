
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

end=$(TZ=UTC date --date now-$now +%H:%M:%S.%N)


echo "operation took ${end} seconds" >> /home/ubuntu/prevent_OCI_Deletion_for_being_idle/log/trackPointlessWork.log