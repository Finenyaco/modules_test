output "repo_name" {
  description = "repo name"
  value       = var.repo_name
}

output "test_var" {
  description = "Testing var"
  value = [
    {
      name: "test",
      value: "var"
    }
  ]
}