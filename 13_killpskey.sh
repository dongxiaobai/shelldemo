#!/bin/bash  
#13_killpskey.sh  
#请根据一个关键字，杀掉系统进程中包含此关键字的进程  
[ $# -eq 0 ] && echo "pls input keyword." && exit 2  
ps -ef | grep $1 | grep -v grep | cut -c 9-15 | xargs kill -9  