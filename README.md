# nordmart-dev-apps

A repo to deploy nordmart microservices in dev environment using Flux GitOps

## Install from local machine

[Visit nordmart-dev-tools](https://github.com/stakater-lab/nordmart-dev-apps/blob/master/README.md) and follow the steps given there.

## Uninstall

Run `make delete` or `make delete-istio` if you used istio to remove nordmart-dev-apps from your cluster.

## Configuration Parameters

Before deploying the Nordmart microservice change the following configuration parameters:

| Parameter | Details | Required |
|---|---|
| DOMAIN | It will be used to create ingress for the application. It need to be changed in `releases/web-helm-release.yaml`, `releases/docker-cfg-secret.yaml` and `releases/gateway-helm-release.yaml` manifest | Mandatory|
| STORAGE_CLASS_NAME | It will be used by `releases/mysql.yaml` and `releases/mongodb.yaml` to create PVC. Its value needs to be changed in mysql and mongo manifests | Mandatory |
| BASE64_ENCODED_SSL_CERTIFICATE_TLS_CRT | Base64 encoded Server Certificate value | Required if using istio |
| BASE64_ENCODED_SSL_CERTIFICATE_TLS_KEY | Base64 encoded Certificate Key value | Required if using istio |
