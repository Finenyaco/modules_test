resource "random_pet" "namespace" {}
resource "random_pet" "name" {}

resource "kubernetes_namespace" "ns" {
  count = var.namespace == "" ? 1 : 0
  metadata {
    name = random_pet.namespace.id
  }
}

module "deployment" {
  source  = "terraform-iaac/deployment/kubernetes"
  version = "1.4.2"

  name      = coalesce(var.name, random_pet.name.id)
  namespace = coalesce(var.namespace, random_pet.namespace.id)
  image     = var.image
  resources = {
    request_cpu = var.cpu
    limit_cpu = var.cpu
    request_memory = var.memory
    limit_memory = var.memory
  }
  env = var.env
}

module "service" {
  source  = "terraform-iaac/service/kubernetes"
  version = "1.0.4"

  app_name      = coalesce(var.name, random_pet.name.id)
  app_namespace = coalesce(var.namespace, random_pet.namespace.id)
  type          = "NodePort"
  port_mapping     = [for p in var.ports :
  {
    name          = "port-${p}"
    internal_port = p
    external_port = p
    protocol      = "TCP"
  }]
}

data "kubernetes_service" "service" {
  depends_on = [module.service]
  metadata {
    name = coalesce(var.name, random_pet.name.id)
    namespace = coalesce(var.namespace, random_pet.namespace.id)
  }
}

data "local_file" "var" {
  filename = "../variables.tf"
  system_disk_size = var.system_disk_size
  test_options     = var.test_options
  test_list        = var.test_list
  test_mix         = var.test_mix
  test_mix_number  = var.test_mix_number
  test_number_list = var.test_number_list
}