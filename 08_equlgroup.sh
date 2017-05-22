#!/bin/bash  
#08_equlgroup.sh  
#指定一个用户名,判断此用户的用户名和它的基本组 组名是否相同  
  
[ $# -eq 0 ] && echo "pls input username." && exit 2  
! id $1 &> /dev/null && echo "$1 not exists" && exit 2  
  
if [ $1 == `id -n -g $1` ];then  
  echo "equals"  
else  
  echo "not equals"  
fi  
  