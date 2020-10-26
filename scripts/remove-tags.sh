#!/bin/sh

read -p "Image name: " IMAGE_NAME

docker images | grep $IMAGE_NAME | tr -s ' ' | cut -d ' ' -f 2 | xargs -I {} docker rmi $IMAGE_NAME:{}