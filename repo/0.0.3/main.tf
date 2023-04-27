resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description + var.test_options
  private     = var.repo_private
  system_disk_size = var.system_disk_size
  test_list        = var.test_list
  test_mix         = var.test_mix
  test_mix_number  = var.test_mix_number
  test_number_list = var.test_number_list
}
