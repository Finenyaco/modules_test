variable "name" {
  default = "terraform-example"
}


resource "alicloud_cdn_domain_new" "default" {
  scope       = "domestic"
  domain_name = var.name
  cdn_type    = "web"
  sources {
    type     = "ipaddr"
    content  = "1.1.1.1"
    priority = 20
    port     = 80
    weight   = 15
  }
}