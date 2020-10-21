#!/bin/sh

docker tag docker.elastic.co/elasticsearch/elasticsearch:7.9.1 localhost:5000/docker.elastic.co/elasticsearch/elasticsearch:7.9.1
docker push localhost:5000/docker.elastic.co/elasticsearch/elasticsearch:7.9.1