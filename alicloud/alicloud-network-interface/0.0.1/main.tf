data "alicloud_zones" "default" {
  available_resource_creation = "VSwitch"
}

data "alicloud_resource_manager_resource_groups" "default" {
  status = "OK"
}

resource "alicloud_vpc" "vpc" {
  vpc_name   = var.name
  cidr_block = var.cidr_block
}

resource "alicloud_vswitch" "vswitch" {
  name       = var.name
  cidr_block = var.cidr_block
  zone_id    = data.alicloud_zones.default.zones[0].id
  vpc_id     = alicloud_vpc.vpc.id
}

resource "alicloud_security_group" "group" {
  name   = var.name
  vpc_id = alicloud_vpc.vpc.id
}

resource "alicloud_network_interface" "default" {
  network_interface_name = var.name
  vswitch_id             = alicloud_vswitch.vswitch.id
  security_group_ids     = [alicloud_security_group.group.id]
  private_ip             = var.private_ip
  private_ips_count      = 3
}

resource "alicloud_ecs_network_interface" "default" {
  network_interface_name = var.name
  vswitch_id             = alicloud_vswitch.vswitch.id
  security_group_ids     = [alicloud_security_group.group.id]
  description            = "Basic test"
  primary_ip_address     = var.ecs_primary_ip_address
  tags = {
    Created = "TF",
    For     = "Test",
  }
  resource_group_id = data.alicloud_resource_manager_resource_groups.default.ids.0
}