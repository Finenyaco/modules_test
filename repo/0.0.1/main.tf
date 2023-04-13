variable "repo_name" {
  description = "Name of the GitHub repository"
  type        = string
}

variable "repo_description" {
  description = "Description of the GitHub repository"
  type        = string
  default     = "For testing"
}

variable "repo_private" {
  description = "Whether the GitHub repository should be private or public"
  type        = bool
  default     = true
}


resource "github_repository" "repo" {
  name        = var.repo_name
  description = var.repo_description
  private     = var.repo_private
}
