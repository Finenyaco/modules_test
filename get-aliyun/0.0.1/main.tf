data "alicloud_instances" "example" {
  status            = "Running"
  availability_zone = "cn-shenzhen-d"
}