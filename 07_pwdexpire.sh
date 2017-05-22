#!/bin/bash  
#07_pwdexpire.sh  
#给定一个用户，获取其密码警告期限，然后判断用户密码使用期限是否已经小于警告期限，  
#如果小于，则是显示“WARN” ，否则显示密码还有多少天到期  
[ $# -eq 0 ] && echo "pls input username." && exit 2  
! id $1 &> /dev/null && echo "$1 not exists" && exit 2  
C_DAY=`grep user1 /etc/shadow | awk -F: '{print $3}'` #created time  
M_DAY=`grep user1 /etc/shadow | awk -F: '{print $5}'` #expire time  
W_DAY=`grep user1 /etc/shadow | awk -F: '{print $6}'` #warn time  
N_DAY=`date  +%s`/86400  
U_DAY=$[ $N_DAY - $C_DAY ]  
L_DAY=$[ $M_DAY - $U_DAY ]  
  
if [ $L_DAY -le $W_DAY ];then  
 echo "warn"  
else  
 echo "left day is $L_DAY"  
fi  
  