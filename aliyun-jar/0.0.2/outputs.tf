# output "endpoint_public_ip" {
#   description = "public ip of the ECS instance"
#   value = data.alicloud_instances.example.instances.0.public_ip
# }

output "instance_names" {
  description = "A list of instances names"
  value = "${data.alicloud_instances.example.names}"
}

output "alicloud_vswitches" {
  description = "vpc_id"
  value = data.alicloud_vswitches.default.vpc_id
}
