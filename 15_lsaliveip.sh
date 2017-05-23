#!/bin/bash  
#15_lsaliveip.sh  
#查询当前192.168.1.x网段内，那些IP被使用了，输出这些IP到一个文件中  
rm -rf /tmp/text.txt  
IP=172.16.219.  
for I in `seq 255` ; do  
  ping $IP$I -c 1 | grep -q "ttl=" && echo $IP$I >> /tmp/text.txt   
done  