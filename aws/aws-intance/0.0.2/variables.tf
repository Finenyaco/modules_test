# @label "Instance Type"
# @group "Basic"
variable "instance_type" {
    type        = string
    description = "instance type"
    default = "t3.small"
}

# @label "Availablity Zone"
# @group "Basic"
variable "availability_zone" {
    type        = string
    description = "avaliability zone"
    default = "ap-east-1a"
}

# @label "Instance Name"
# @group "Basic"
variable "instance_name" {
    type        = string
    description = "instance name"
    default = "test-resource"
}


# @group "Advanced"
variable "vpc_cidr_block" {
    type        = string
    description = "vpc cidr block"
    default = "172.16.0.0/16"
}

# @group "Advanced"
variable "subnet_cidr_block" {
    type        = string
    description = "subnet cidr block"
    default = "172.16.10.0/24"
}

# @group "Test"
variable "test" {
    type        = string
    description = "For testing"
    default = "manual"
}