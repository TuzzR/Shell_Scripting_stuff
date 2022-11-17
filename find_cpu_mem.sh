#! /usr/bin/bash
echo Memory Disk CPU
MEM=$(free -m | awk 'NR==2{printf " \t%.2f%%\t\t", $3/$2*100}')
DIS=$(df -h | awk '$NF=="/"{printf "%s\t\t", $5}')
CPU=$(top -bn1 | grep load | awk '{printf "%.2f%%\t\t\n", $(NF-2)}')
echo $MEM$DIS$CPU


