#!/bin/bash
if [ `docker ps | grep tibame-flask | wc -l`  = 1 ]
then
        docker stop tibame-flask
        docker rm  tibame-flask
fi
