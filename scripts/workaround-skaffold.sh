#!/bin/sh

current_ns="$(kubectl config view --minify --output 'jsonpath={..namespace}')"
kubectl config set-context --current --namespace=
(sleep 3 && kubectl config set-context --current --namespace="${current_ns}" ) &
    
skaffold dev