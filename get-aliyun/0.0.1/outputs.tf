output "instance_names" {
  description = "A list of instances names"
  value = "${data.alicloud_instances.example.names}"
}