variable "repo_name" {
  type        = string
  description = "Name of the GitLab repository to create"
}

variable "repo_description" {
  type        = string
  description = "Description of the GitLab repository to create"
}

variable "repo_visibility" {
  type        = string
  description = "Visibility level of the GitLab repository to create"
  default     = "private"
}

variable "initialize_with_readme" {
  type        = bool
  description = "Whether to initialize the GitLab repository with a README file"
  default     = true
}

variable "enable_issues" {
  type        = bool
  description = "Whether to enable issues for the GitLab repository"
  default     = true
}

variable "enable_merge_requests" {
  type        = bool
  description = "Whether to enable merge requests for the GitLab repository"
  default     = true
}

variable "enable_container_registry" {
  type        = bool
  description = "Whether to enable the container registry for the GitLab repository"
  default     = true
}

variable "enable_pages" {
  type        = bool
  description = "Whether to enable GitLab Pages for the GitLab repository"
  default     = false
}

variable "test_var" {
  type = set(
    object(
      {
        name  = string
        value = string
    )
  )
  description = "test variables"
}

terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "15.10.0"
    }
  }
}

resource "gitlab_project" "repo" {
  name                        = var.repo_name
  description                 = var.repo_description
  visibility_level            = var.repo_visibility
  initialize_with_readme      = var.initialize_with_readme
  issues_enabled              = var.enable_issues
  merge_requests_enabled      = var.enable_merge_requests
  container_registry_enabled  = var.enable_container_registry
  pages_enabled               = var.enable_pages
}
