data "equinix_network_account" "this" {
  metro_code = var.metro_code
}

# Retrieve my public IP
data "http" "myip" {
  url = "http://ifconfig.me"
}

resource "equinix_network_acl_template" "this" {
  count = var.create_acl ? 1 : 0

  name        = var.acl_name
  description = var.acl_description

  inbound_rule {
    subnet      = "${chomp(data.http.myip.response_body)}/32"
    protocol    = "IP"
    src_port    = "any"
    dst_port    = "any"
    description = "Inbound from my IP"
  }
}

resource "equinix_network_device" "this" {
  type_code      = var.type_code
  metro_code     = data.equinix_network_account.this.metro_code
  self_managed   = var.self_managed
  byol           = var.byol
  core_count     = var.core_count
  name           = var.device_name
  hostname       = var.device_hostname
  package_code   = var.package_code
  version        = var.device_version
  notifications  = var.notifications
  term_length    = 1
  account_number = data.equinix_network_account.this.number

  ssh_key {
    username = var.username
    key_name = var.ssh_key_name
  }

  acl_template_id = local.acl_template_id
}

locals {
  acl_template_id = var.create_acl ? equinix_network_acl_template.this[0].id : var.acl_template_id
}