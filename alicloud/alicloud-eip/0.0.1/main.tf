 resource "alicloud_eip" "example" {
  bandwidth            = "10"
  internet_charge_type = "PayByBandwidth"
}