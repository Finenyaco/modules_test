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

# @options [40,60,80,100]
variable "system_disk_size" {
  description = "The size of the system disk"
  type = number
  default     = 40
}

# @options ["yes","no","haha"]
variable "test_options" {
  description = "Testing var options"
  type = string
  default     = "yes"
}

# @options ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
variable "test_list" {
  description = "Testing options list and no default value"
  type = list(string)
}

# @options ["20", 30, 50, 60]
variable "test_mix" {
  description = "Testing mixed type options"
  default     = 20
}

# @options ["20", "30", "50", 60]
variable "test_mix_number" {
  description = "Testing mixed type options"
  type = number
}
