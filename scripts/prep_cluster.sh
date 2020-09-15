#!/bin/bash

section "Pulling images..."
docker pull rancher/k3s:v1.18.4-k3s1
docker pull rancher/k3d-proxy:v3.0.0-rc.7
docker pull rancher/k3d-tools:v3.0.0-rc.7
docker pull python:3.7-slim