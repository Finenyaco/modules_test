variable "test_str" {
  type        = string
  default     = "variable-test"
}

variable "test_num" {
  default     = 123
}

variable "test_bool" {
  type       = bool
  default    = false
}

variable "test_lst" {
  default     = [80, 443]
}

variable "test_map" {
  default     = {
    name      = "John"
    age       = "30"
    email     = "john@example.com"
  }
}

variable "test_object" {
  type          = object({
    name        = string
    age         = number
    email       = optional(object({
        address = string
        domain  = string
    }))
  })
  default       = {
    name        = "Bob"
    age         = 23
    email       = {
        address = "bob"
        domain  = "example.com"
    }
  }
}

# @show_if "test_num!=123"
variable "show_uneq" {
  type      = string
  default   = "ok"
}

# @show_if "test_num>123"
variable "show_gt" {
  type      = string
  default   = "ok"
}

# @show_if "test_num<123"
variable "show_lt" {
  type      = string
  default   = "ok"
}

# @show_if "test_str=yes&&test_bool=true"
variable "show_and" {
  type      = string
  default   = "ok"
}

# @show_if "test_num>=123"
variable "show_gteq" {
  type      = string
  default   = "ok"
}

# @show_if "test_num<=123"
variable "show_lteq" {
  type      = string
  default   = "ok"
}

output "output_str" {
  value         = var.test_str 
}

output "output_num" {
  value         = var.test_num
}

output "output_lst" {
  value         = var.test_lst
}

output "output_bool" {
  value         = var.test_bool
}

output "output_map" {
  value         = var.test_map
}

output "output_object" {
  value         = var.test_object
}