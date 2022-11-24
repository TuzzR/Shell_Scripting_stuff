#! /usr/bin/bash

read -p "enter a string to reverse: " str
j=0
len=${#str}
j=$len
for((i=$len - 1; i>= 0; i--))
do
  reverse="$reverse${str:$i:1}" 
done
echo "$reverse"
