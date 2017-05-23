#!/bin/bash  
#14_lsmaxfile.sh  
#传给脚本一个参数：目录，输出该目录中文件最大的，文件名和文件大小(ls -al | grep "^-")  
[ $# -eq 0 ] && echo "pls input dir path." && exit 2  
! ls $1 &> /dev/null && echo "$1 not exists" && exit 2  
  
ls -alR $1 | grep "^-" | sort -rn | head -1 | awk '{print $9"\t" $5/1024"KB"}'  