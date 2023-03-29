
# Module `mytest`

Provider Requirements:
* **kubernetes:** (any version)

## Input Variables
* `deployment_labels` (required)
* `deployment_name` (required): Deployment name
* `image` (required): Docker image name
* `port` (default `80`): Service ports to expose
* `replicas` (default `1`)
* `service_labels` (required)
* `service_name` (required): Service name
* `service_port` (default `80`)
* `target_port` (default `80`)

## Managed Resources
* `kubernetes_deployment.deployment` from `kubernetes`
* `kubernetes_service.service` from `kubernetes`

