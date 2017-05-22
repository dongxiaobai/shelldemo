#!/bin/bash  
#06_threenums.sh  
#给定三个整数，判断其中的最大值和最小数。并显示出来  
[ $# -ne 3 ] && echo "pls input 3 nums." && exit 2  
MAX=$1  
MIN=$1  
for I in $2 $3 ;do  
 if [ $MAX -lt $I ];then  
  MAX=$I  
 fi  
 if [ $MIN -gt $I ];then  
  MIN=$I  
 fi  
done  
echo "MAX=${MAX},MIN=${MIN}"  