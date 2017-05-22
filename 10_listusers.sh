#!/bin/bash  
#10_listusers.sh  
#给定三个用户名，将此些用户的帐号信息提取出来，后放入/tmp/test.txt文件中，并在行首给定行号。  
[ $# -ne 3 ] && echo "pls input 3 usernames." && exit 2  
rm -rf /tmp/text.txt  
TEMP=1  
for I in $1 $2 $3 ; do  
  echo $TEMP `id $I` >> /tmp/text.txt  
  TEMP=$[$TEMP+1]  
done  