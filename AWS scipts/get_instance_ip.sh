#!/bin/bash
ip=$(aws ec2 describe-instances --instance-id i-07f58bb991c412c53 --query 'Reservations[*].Instances[*].PublicIpAddress' --output text)
ssh -Y -i ~/.ssh/Int-1-devops.pem ubuntu@$ip 