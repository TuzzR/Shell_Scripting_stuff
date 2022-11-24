#! /usr/bin/bash

#findppid=$(ps -A -ostat,pid,ppid |  grep -e '[Zz]')
#exec $(ps -A -ostat,pid,ppid |grep -e '[Zz]')

#if [ `echo $? -ne 1` ]
#then
#	psid=$(awk '{print $3}')
#	exec `kill -9 $psid`
#else
#	exit 1
#fi
#exit 0

value=$(ps -A -ostat,pid,ppid |grep -e '[Zz]' | awk '{print $3}')

if [ -z "$value" ]
then
      echo "\No zombie process found"
else
      kill -9 $value
fi
