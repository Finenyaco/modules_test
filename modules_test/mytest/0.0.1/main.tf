variable "deployment_name" {
  type = string
  description = "Deployment name"
}

variable "image" {
  type = string
  description = "Docker image name"
}

variable "replicas" {
  type = number
  default = 1
}

variable "port" {
  type = number
  description = "Service ports to expose"
  default = 80
}

variable "deployment_labels" {
  type = map(string)
}

resource "kubernetes_deployment" "deployment" {
  metadata {
    name = var.deployment_name
    labels = var.labels
  }

  spec {
    selector {
      match_labels = var.labels
    }

    replicas = var.replicas

    template {
      metadata {
        labels = var.deployment_labels
      }

      spec {
        container {
          image = var.image
          name  = var.deployment_name

          port {
            container_port = var.port
          }
        }
      }
    }
  }
}

variable "service_name" {
  type = string
  description = "Service name"
}

variable "service_port" {
  type = number
  default = 80
}

variable "target_port" {
  type = number
  default = 80
}

variable "service_labels" {
  type = map(string)
}

resource "kubernetes_service" "service" {
  metadata {
    name = var.service_name
    labels = var.service_labels
  }

  spec {
    selector = var.labels

    port {
      port        = var.service_port
      target_port = var.target_port
    }

    type = "LoadBalancer"
  }
}