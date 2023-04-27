resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  private     = var.repo_private
  system_disk_size = var.system_disk_size
  test_options     = var.test_options
}
