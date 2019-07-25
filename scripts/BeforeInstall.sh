#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep tibami-student16 | wc -l`  = 1 ]
then
        docker rmi tibami-student16
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/tibami-student16:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/tibami-student16:latest
fi
