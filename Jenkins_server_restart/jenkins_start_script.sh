#!/bin/bash

ip=$(aws ec2 describe-instances --instance-id i-07f58bb991c412c53 --region=us-east-1 --query 'Reservations[*].Instances[*].PublicIpAddress' --output text)

#cd /var/lib/jenkins/


echo "<?xml version='1.1' encoding='UTF-8'?>
<jenkins.model.JenkinsLocationConfiguration>
  <jenkinsUrl>http://$ip:8080/</jenkinsUrl>
  </jenkins.model.JenkinsLocationConfiguration>" > /var/lib/jenkins/jenkins.model.JenkinsLocationConfiguration.xml

sudo firewall-cmd --add-port=8080/tcp

echo "http://$ip:8080/login"
echo "http://$ip:8080/login" | xclip -selection clipboard

echo "url copied successfuly..."
read -p "Do you wish to restart jenkins.service ? [y/n]:" choice

if [[ $choice =~ [yY] ]] 
then
        echo "restarted service..."
        sudo systemctl restart jenkins
elif [[ $choice =~ [nN] ]] 
then
        echo "jenkins.service status is the same as before"
else
        echo "Wrong option.."
fi