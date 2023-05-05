output "endpoint_public_ip" {
  description = "public ip of ECS instance"
  value = [for instance in data.alicloud_instances.example.instances : instance.public_ip]
}

output "alicloud_vswitches" {
  description = "vpc_id"
  value = data.alicloud_vswitches.default.vpc_id
}
