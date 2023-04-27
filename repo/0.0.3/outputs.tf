output "repo_name" {
  description = "repo name"
  value       = var.repo_name
}

output "test_var" {
  description = "Testing var"
  value = [
    {
      name: "system_disk_size",
      value: var.system_disk_size
    },
    {
      name: "test2",
      value: var.test_options
    }
  ]
}
