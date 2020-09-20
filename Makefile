DEFAULT_GOAL := help
help:
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z0-9_-]+:.*?##/ { printf "  \033[36m%-27s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

.PHONY: clone
clone: ## Clone all repos
	./scripts/clone_repos.sh

.PHONY: create-k3d-cluster
create-k3d-cluster: ## Dev cluster
	./scripts/k3d-create-cluster.sh

.PHONE: create-kind-cluster
create-kind-cluster: ## Create Kind cluster
	kind create cluster --name kind-guya-ltd-cluster --config kind-cluster-config.yaml

.PHONY: init-kind-ingress
init-kind-ingress: ## Create Nginx Ingress Controlelr and attach services
	kubectl apply -f kind-ingress-nginx.yaml
	kubectl wait --namespace ingress-nginx \
  	--for=condition=ready pod \
  	--selector=app.kubernetes.io/component=controller \
  	--timeout=90s
	kubectl create -f ingress.yaml

.PHONY: init-kind
init-kind: create-kind-cluster init-kind-ingress ## Kind Cluster with nginx cluster

####### Docker Builds #######
.PHONY: docker-build-admin-panel
docker-build-admin-panel: ## Build base docker for dev
	docker build -t guyaltd/admin-panel:build -f Dockerfile.build
