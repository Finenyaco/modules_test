variable "cluster_name" {
    type = string
    description = "Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9-_]+$)."
    default = "test-eks"
}

variable "instance_name" {
    type        = string
    description = "instance name"
    default = "test_resource"
}


variable "vpc_cidr_block" {
    type        = string
    description = "vpc cidr block"
    default = "172.16.0.0/16"
}


variable "subnet_cidr_block" {
    type        = string
    description = "subnet cidr block"
    default = "172.16.20.0/24"
}

variable "network_interface_ip" {
    type        = set(string)
    description = "network interface ip"
    default = ["172.16.10.100"]
}

variable "availability_zone1" {
    type        = string
    description = "avaliability zone"
    default = "ap-east-1a"
}

variable "availability_zone2" {
    type        = string
    description = "avaliability zone"
    default = "ap-east-1b"
}