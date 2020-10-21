#!/bin/sh

docker tag docker.elastic.co/elasticsearch/elasticsearch:7.9.1 localhost:5000/docker.elastic.co/elasticsearch/elasticsearch:7.9.1
docker push localhost:5000/docker.elastic.co/elasticsearch/elasticsearch:7.9.1

docker tag docker.elastic.co/kibana/kibana:7.9.1 localhost:5000/docker.elastic.co/kibana/kibana:7.9.1
docker push localhost:5000/docker.elastic.co/kibana/kibana:7.9.1

docker tag docker.elastic.co/logstash/logstash:7.9.1 localhost:5000/docker.elastic.co/logstash/logstash:7.9.1
docker push localhost:5000/docker.elastic.co/logstash/logstash:7.9.1

docker tag bitnami/rabbitmq:3.8.9-debian-10-r0 localhost:5000/bitnami/rabbitmq:3.8.9-debian-10-r0
docker push localhost:5000/bitnami/rabbitmq:3.8.9-debian-10-r0

docker tag bitnami/postgresql:11.9.0-debian-10-r34 localhost:5000/bitnami/postgresql:11.9.0-debian-10-r34
docker push localhost:5000/bitnami/postgresql:11.9.0-debian-10-r34

docker tag bitnami/mongodb:4.4.1-debian-10-r13 localhost:5000/bitnami/mongodb:4.4.1-debian-10-r13
docker push localhost:5000/bitnami/mongodb:4.4.1-debian-10-r13

docker tag bitnami/redis:6.0.8-debian-10-r0 localhost:5000/bitnami/redis:6.0.8-debian-10-r0
docker push localhost:5000/bitnami/redis:6.0.8-debian-10-r0

docker tag bitnami/mysql:8.0.21-debian-10-r46 localhost:5000/bitnami/mysql:8.0.21-debian-10-r46
docker push localhost:5000/bitnami/mysql:8.0.21-debian-10-r46