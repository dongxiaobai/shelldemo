#!/bin/bash  
#03_countlins.sh
#如果/etc/inittab文件的行数大于50，就显示好大的文件  
C=`wc -l /etc/inittab | awk '{print $1}'`  
if [ $C -gt 50 ];then  
 echo "big file"  
else  
 echo "small file"  
fi  