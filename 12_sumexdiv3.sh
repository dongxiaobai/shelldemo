#!/bin/bash  
#12_sumexdiv3.sh 
#计算100以内所有能被3整除的整数的和  
SUM=0  
for I in `seq 100` ; do  
  if [ $[$I%3] -eq 0 ];then  
    SUM=$[$I+$SUM]  
  fi  
done  
echo "SUM=$SUM"  