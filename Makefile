.ONESHELL:
SHELL := /bin/bash

### Without istio

install-local:
	kubectl apply -f releases/

delete:
	kubectl delete -f releases/

### With Istio

install-local-istio:
	kubectl apply releases-istio/ -f .

delete-istio:
	kubectl delete -f releases-istio/