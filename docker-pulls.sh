#!/bin/sh

docker pull docker.elastic.co/kibana/kibana:7.9.1
docker pull docker.elastic.co/elasticsearch/elasticsearch:7.9.1
docker pull docker.elastic.co/logstash/logstash:7.9.1
docker pull docker.io/bitnami/rabbitmq:3.8.9-debian-10-r0
docker pull docker.io/bitnami/postgresql:11.9.0-debian-10-r34
docker pull docker.io/bitnami/redis:6.0.8-debian-10-r0
docker pull docker.io/bitnami/mongodb:4.4.1-debian-10-r13
docker pull docker.io/bitnami/mysql:8.0.21-debian-10-r46