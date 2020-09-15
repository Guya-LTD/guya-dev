#!/bin/sh

k3d cluster create guya-ltd-cluster --api-port 6550 --wait --verbose -p 30000-32767:30000-32767@server[0]
