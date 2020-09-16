#!/bin/sh

docker images | grep guyaltd | tr -s ' ' | cut -d ' ' -f 2 | xargs -I {} docker rmi guyaltd/branch:{}