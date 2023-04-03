output "service_ip" {
  description = "Service IP"
  value       = data.kubernetes_service.service.spec.0.cluster_ip
}

output "ports" {
  description = "Service Ports"
  value       = var.ports
}

output "test_module" {
  description = "Testing module output"
  value       = var.test_module
}
