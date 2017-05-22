#!/bin/bash  
#04_checkroot.sh:w  
#给定一个用户,如果其UID=0，就显示其为管理员，否则显示其为普通用户  
if [ $# -eq 0 ];then  
 echo "please input username"  
 exit 1  
fi  
  
! id $1 &> /dev/null && echo "$1 not exists" && exit 2  
  
C=`id -u $1`  
if [ $C -eq 0 ];then  
 echo "管理员"  
else  
 echo "普通用户"  
fi  
  