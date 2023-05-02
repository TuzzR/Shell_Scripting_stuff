#!/bin/bash 
state=$(aws ec2 describe-instances --instance-id i-07f58bb991c412c53 --query 'Reservations[*].Instances[*].State.Name' --output text)
echo "$state"

if [ "$state" == "running" ] ; then 
        aws ec2 stop-instances --instance-ids i-07f58bb991c412c53
        $(exit)
else 
        aws ec2 start-instances --instance-ids i-07f58bb991c412c53
fi