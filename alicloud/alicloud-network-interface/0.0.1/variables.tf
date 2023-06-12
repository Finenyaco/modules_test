variable "name" {
  default = "networkInterfaceName"
}

variable "cidr_block" {
  type = string
  default = "192.168.0.0/24"
}

variable "private_ip" {
  type = string
  default = "192.168.0.2"
}

variable "ecs_primary_ip_address" {
  type = string
  default = "192.168.0.10"
}