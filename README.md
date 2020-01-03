# nordmart-dev-apps

A repo to deploy nordmart microservices in dev environment using Flux GitOps

## Configuration Parameters

Before deploying the Nordmart microservice change the following configuration parameters:

| Parameter | Details |
|---|---|
| DOMAIN | It will be used to create ingress for the application. It need to be changed in `releases/web-helm-release.yaml` and `releases/gateway-helm-release.yaml` manifest |
| STORAGE_CLASS_NAME | It will be used by `releases/mysql.yaml` and `releases/mongodb.yaml` to create PVC. Its value needs to be changed in mysql and mongo manifests |
