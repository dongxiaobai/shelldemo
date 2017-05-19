#!/bin/bash
option="${1}" # 这里注意$符号在外面不在里面，写错过
case ${option} in
	-f) FILE="${2}"
		echo "File name is $FILE"
		;;
	-d) DIR="${2}" #这里注意-d的横线不是下划线，写错过
		echo "Dir name is $DIR" #这里必须用双引号，否则无法解析$DIR 
		;;
	*)
		echo "`basename ${0}`:usage: [-f file] | [-d directory]"
		exit 1 # Command to come out of the program with status 1
		;; #这里也有两个分号，不要漏掉，漏掉程序没法执行
esac