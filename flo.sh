#! /usr/bin/bash

read -p "Enter the first num : " V1
read -p "Enter the seccond num : " V2


res= echo "$((V1+V2))" | bc

echo $res


