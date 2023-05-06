output "instances" {
  description = "A list of instances"
  value = data.alicloud_instances.example.instances
}

output "instance_ids" {
  description = " A list of ECS instance IDs."
  value = data.alicloud_instances.example.instances
}