#!/bin/sh

# Stop `kind-registry` and delete
docker container stop kind-registry
docker container rm kind-registry