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

variable "additional_set" {
  description = "Optional set for additional helm settings"
    type = set(
    object(
      {
        name  = string
        value = string
        type = optional(string)
      }
    )
  )
}
