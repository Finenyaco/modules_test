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

output "test_var" {
  description = "Testing var"
  value = [
    {
      name: "system_disk_size",
      value: var.system_disk_size,
      test_list: var.test_list,
      test_mix: var.test_mix,
      test_mix_number: var.test_mix_number
      test_number_list: var.test_number_list
    },
    {
      name: "test2",
      value: var.test_options
    }
  ]

}