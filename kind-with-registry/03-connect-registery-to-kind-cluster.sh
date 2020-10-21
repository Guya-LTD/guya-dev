reg_name='kind-registry'
reg_port='5000'
node='guya-ltd-cluster-control-plane'

# connect the registry to the cluster network
docker network connect "kind" "${reg_name}"

# tell https://tilt.dev to use the registry
# https://docs.tilt.dev/choosing_clusters.html#discovering-the-registry
kubectl annotate node "${node}" "kind.x-k8s.io/registry=localhost:${reg_port}";