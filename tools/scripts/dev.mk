.ONESHELL:
SHELL := /bin/bash
OS := $(shell uname)

create-namespace-dev:
	kubectl create namespace nordmart-dev-apps || true

install-flux-dev:
	cd dev
	kubectl apply -f rbac-flux.yaml
	helm upgrade --install flux-nordmart-dev --namespace nordmart-dev-apps weaveworks/flux -f flux-values.yaml

install-secret-dev:
	cd dev
	kubectl apply -f secret.yaml

.PHONY: create-namespace-dev install-flux-dev
