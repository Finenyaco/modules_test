resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  private     = var.repo_private
  additional_set = var.additional_set
}
