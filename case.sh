#!/bin/bash
option="${1}" # ����ע��$���������治�����棬д���
case ${option} in
	-f) FILE="${2}"
		echo "File name is $FILE"
		;;
	-d) DIR="${2}" #����ע��-d�ĺ��߲����»��ߣ�д���
		echo "Dir name is $DIR" #���������˫���ţ������޷�����$DIR 
		;;
	*)
		echo "`basename ${0}`:usage: [-f file] | [-d directory]"
		exit 1 # Command to come out of the program with status 1
		;; #����Ҳ�������ֺţ���Ҫ©����©������û��ִ��
esac