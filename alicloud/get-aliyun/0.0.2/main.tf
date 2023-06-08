data "alicloud_instances" "example" {
  
  status            = "Running"
  availability_zone = "cn-shenzhen-d"
  instance_name     = "demo-instance"
}

output "instance_names" {
  description = "A list of instances names"
  value = "${data.alicloud_instances.example.names}"
}

output "endpoint_public_ip" {
  description = "public ip of the ECS instance"
  value = data.alicloud_instances.example.instances.0.public_ip
}
