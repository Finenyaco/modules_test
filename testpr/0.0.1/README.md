
# Module `testpr`

Provider Requirements:
* **kubernetes:** (any version)

## Input Variables
* `container_port` (default `80`): Port number for the container
* `image` (required): Docker image for the container
* `replicas` (default `1`): Number of replicas for the deployment

## Managed Resources
* `kubernetes_deployment.example` from `kubernetes`

