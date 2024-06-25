#!/bin/bash

whoami
sudo apt update
sudo apt install git -y
pwd
git clone https://github.com/krishnansai/docker-test.git
ls
cp -R docker-test/* .
ls
sudo docker build . -t 590183999482.dkr.ecr.ap-south-1.amazonaws.com/mytest
sudo aws ecr get-login-password --region ap-south-1| docker login --username AWS --password-stdin 590183999482.dkr.ecr.ap-south-1.amazonaws.com
sudo docker push 590183999482.dkr.ecr.ap-south-1.amazonaws.com/mytest
sudo docker run -d -p 80:80 590183999482.dkr.ecr.ap-south-1.amazonaws.com/mytest