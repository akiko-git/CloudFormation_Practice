#!/bin/bash

###CodeDeployエージェントをインストール###
sudo yum update -y

sudo yum install ruby -y

sudo yum install wget -y

cd /home/ec2-user

wget https://aws-codedeploy-ap-northeast-1.s3.ap-northeast-1.amazonaws.com/latest/install

chmod +x ./install

sudo ./install auto

sudo service codedeploy-agent status



