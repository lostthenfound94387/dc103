#!/bin/bash

$(aws ecr get-login --no-include-email --registry-ids 129729052534 --region ap-northeast-1)

if [ `docker images | grep tibame-student16 | wc -l`  = 1 ]
then
        docker rmi tibame-student16
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/tibame-student16:latest
else
        docker pull 129729052534.dkr.ecr.ap-northeast-1.amazonaws.com/tibame-student16:latest
fi
