resource "alicloud_disk" "test_ecs_disk" {
  # cn-beijing
  availability_zone = "cn-shenzhen-b"
  name              = "test-disk"
  description       = "Hello ecs disk."
  category          = "cloud_efficiency"
  size              = "30"
  tags = {
    Name = "TerraformTest"
  }
}