# Guya Development Environment

Guya E-commerce &amp; Guya Express Microservice Development Environment

- `docker`
- `k3d >= v3.0.0-rc.7`

## Resources

- https://k3d.io/
- https://github.com/rancher/k3d
- v3 Release Candidate: https://github.com/rancher/k3d/releases/tag/v3.0.0-rc.7
  - install e.g. via `wget -q -O - https://raw.githubusercontent.com/rancher/k3d/main/install.sh | TAG=v3.0.0-rc.7 bash`
  
- k3d in Rancher Meetup May 2020: https://youtu.be/hMr3prm9gDM?t=2103 (with old version, using the old syntax!)

## Usage
```
$ export VERSION=dev
```

Build for first time inorder for skaffold to use cache
```

$ skaffold build

```

```

skaffold dev --no-prune=false --cache-artifacts

```

Remove and untaged images
```
skaffold dev --no-prune=false --cache-artifacts=false
```

## Mongo db

```
export MONGODB_ROOT_PASSWORD=$(kubectl get secret --namespace guya-ltd mongodb -o jsonpath="{.data.mongodb-root-password}" | base64 --decode)
```

```
kubectl exec --stdin --tty -n guya-ltd pod/mongodb-0 -- mongo admin --host "mongodb" --authenticationDatabase admin -u root -p $MONGODB_ROOT_PASSWORD
```