output "repo_name" {
  description = "repo name"
  value       = var.repo_name
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
    },
    {
      name: "test2",
      value: var.test_options
    }
  ]

}
