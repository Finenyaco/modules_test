resource "kubernetes_deployment" "example" {
  metadata {
    name = "example-deployment"
    labels = {
      app = "example"
    }
  }

  spec {
    replicas = var.replicas
    selector {
      match_labels = {
        app = "example"
      }
    }
    template {
      metadata {
        labels = {
          app = "example"
        }
      }

      spec {
        container {
          image = var.image
          name  = "example-container"
          port {
            container_port = var.container_port
          }
        }
      }
    }
  }
}

variable "replicas" {
  description = "Number of replicas for the deployment"
  default     = 1
}

variable "image" {
  description = "Docker image for the container"
}

variable "container_port" {
  description = "Port number for the container"
  default     = 80
}