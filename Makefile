.ONESHELL:
SHELL := /bin/bash

### Without istio

install-local:
	kubectl apply -f releases/
	install-kafka-strimzi

delete:
	kubectl delete -f releases/
	delete-kafka-strimzi

### With Istio

install-local-istio:
	kubectl apply releases-istio/ -f .
	install-kafka-strimzi

delete-istio:
	kubectl delete -f releases-istio/
	delete-kafka-strimzi

### Kafka Strimzi

install-kafka-strimzi:
	helm repo add strimzi https://strimzi.io/charts/
	helm install 0.16.0-rc1 strimzi/strimzi-kafka-operator
	kubectl apply -f releases/kafka-ephemeral-single.yaml

delete-kafka-strimzi:
	helm delete 0.16.0-rc1