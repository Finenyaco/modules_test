variable "name" {
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

variable "labels" {
  type = map(string)
  description = "app labels"
}

resource "kubernetes_deployment" "deployment" {
  metadata {
    name = var.name
    labels = var.labels
  }

  spec {
    selector {
      match_labels = var.labels
    }

    replicas = var.replicas

    template {
      metadata {
        labels = var.labels
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


variable "service_port" {
  type = number
  default = 80
}

variable "target_port" {
  type = number
  default = 80
}

resource "kubernetes_service" "service" {
  metadata {
    name = var.name
    labels = var.labels
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
