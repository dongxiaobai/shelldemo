#!/bin/bash  
#11_hellouser.sh  
#依次向/etc/passwd中的每个用户问好：hello 用户名，并显示用户的shell  
COUNT=`wc -l /etc/passwd | awk '{print $1}'`  
for I in `seq $COUNT` ; do  
  UN=`head -$I /etc/passwd | tail -1 | awk -F: '{print $1}'`  
  SN=`head -$I /etc/passwd | tail -1 | awk -F: '{print $7}'`  
  echo -e "hello,$UN \t your shell:$SN"  
done 
