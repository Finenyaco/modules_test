variable "name" {
  default = "*.tsfxwx.com"
}

variable "scope" {
  type = string
  default = "domestic"
}

variable "cdn_type" {
  type = string
  default = "web"
}

variable "source_type" {
  type = string
  default = "ipaddr"
}

variable "source_content" {
  type = string
  default = "1.1.1.1"
}

resource "alicloud_cdn_domain_new" "default" {
  scope       = var.scope
  domain_name = var.name
  cdn_type    = var.cdn_type
  sources {
    type     = var.source_type
    content  = var.source_content
    priority = 20
    port     = 80
    weight   = 15
  }
}