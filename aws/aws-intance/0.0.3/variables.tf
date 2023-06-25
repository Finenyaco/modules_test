# @label "Instance Type"
# @group "Basic"
variable "instance_type" {
    type        = string
    description = "instance type"
    default = "t3.nano"
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
variable "private_ip" {
    type        = string
    description = "network interface private ip"
    default = "192.168.1.60"
}

# @group "Test"
variable "test" {
    type        = string
    description = "For testing"
    default = "manual"
}