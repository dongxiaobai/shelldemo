#!/bin/bash  
#02_deluser.sh  
#使用一个变量保存一个用户名  
#删除此变量中的用户，且一并删除其家目录  
#显示“用户删除成功”信息。  
if [ $# -eq 0 ];then  
 echo "pls input username"  
 exit 2  
fi  
  
! id $1 &> /dev/null && echo "$1 not exists" && exit 2  
userdel -r $1  
echo "$1 del success."  