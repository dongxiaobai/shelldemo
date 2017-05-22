#!/bin/bash  
#05_histories.sh  
#判断命令历史中历史命令的总条目大于500，如果大于，则显示“Some command is done.”,否则显示：“OR”  
C=`wc -l ~/.bash_history | awk '{print $1}'`  
echo $C  
if [ $C -gt 500 ];then  
 echo "Some command is done"  
else  
 echo "OR"  
fi  