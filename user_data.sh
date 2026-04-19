#!/bin/bash
yum update -y
yum install docker -y
systemctl start docker
systemctl enable docker

docker pull chaitanyaaaa/smartcalc:v1.10
docker run -d -p 80:3000 chaitanyaaaa/smartcalc:v1.10
