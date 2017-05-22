#!/bin/bash  
#01_adduser.sh  
#添加5个用户，user1，，，，user5  
#每个用户的密码同用户名，要求：添加密码完成后不显示passwd执行结果。  
#显示添加成功信息  
#添加完成之后计算系统一共有多个用户  
if [ $# -eq 0 ];then  
 echo "please input username"  
 exit 1  
fi  
  
id $1 &> /dev/null && echo "$1 exists" && exit 2  
id $1 &> /dev/null || useradd $1  
echo $1 | passwd --stdin $1 &>/dev/null  
echo "$1 add success."  
  
C=`wc -l /etc/passwd | awk '{print $1}'`  
echo "users count = $C"  