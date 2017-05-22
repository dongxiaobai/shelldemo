#!/bin/bash  
#09_showcpuco.sh  
#判断当前主机的CPU生产商，（其信息保存在/proc/cupinfo文件中）  
#如果是：AuthemticAMD ,就显示其为AMD公司  
#        GenuineIntel   ，就显示其为 Intel公司  
#否则，就显示其为非主流公司  
vendor_id=`grep vendor_id /proc/cpuinfo | awk -F: '{print $2}'`  
if [ $vendor_id ==  AuthemticAMD ];then  
  echo "AMD"  
elif [ $vendor_id ==  GenuineIntel ];then  
  echo "Intel"  
else  
  echo "Other"  
fi 