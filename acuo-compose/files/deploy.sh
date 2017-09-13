#!/bin/bash
cd ~/projects/acuo-devops/services/dev.acuo.com
docker-compose stop $*
docker-compose rm -v $*
for var in "$@"
do
 docker rmi 038337692500.dkr.ecr.ap-southeast-1.amazonaws.com/acuo-${var}:latest
done
docker-compose up -d