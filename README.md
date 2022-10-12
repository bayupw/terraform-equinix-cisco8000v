# Terraform Equinix Fabric Cisco 8000v router

Terraform module for deploying Cisco 8000V router in Equinix Fabric

To run this project, you will need to set the following environment variables or the [shared configuration and credentials files](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).
- EQUINIX_API_CLIENTID
- EQUINIX_API_CLIENTSECRET

See the [Developer Platform](https://developer.equinix.com/docs?page=/dev-docs/fabric/overview) page on how to generating Client ID and Client Secret;

## Sample usage using existing ACL

```hcl
module "wanrouter" {
  source          = "bayupw/cisco8000v/equinix"
  version         = 1.0.0
  metro_code      = "NY"
  create_acl      = false
  core_count      = 2
  package_code    = "network-essentials"
  device_version  = "17.06.01a"
  device_name     = "tf-cisco8000v-p"
  device_hostname = "cisco8000v-primary"
  notifications   = ["myemail@equinix.com"]
  username        = "eqxadmin"
  ssh_key_name    = "eqxsshkey"
  acl_template_id = "0bff6e05-f0e7-44cd-804a-25b92b835f8b"
}

## Sample usage with new ACL

```hcl
module "wanrouter" {
  source          = "bayupw/cisco8000v/equinix"
  version         = 1.0.0
  metro_code      = "NY"
  create_acl      = true
  core_count      = 2
  package_code    = "network-essentials"
  device_version  = "17.06.01a"
  device_name     = "tf-cisco8000v-p"
  device_hostname = "cisco8000v-primary"
  notifications   = ["myemail@equinix.com"]
  username        = "eqxadmin"
  ssh_key_name    = "eqxsshkey"
}

```

## Contributing

Report issues/questions/feature requests on in the [issues](https://github.com/bayupw/terraform-equinix-cisco8000v/issues/new) section.

## License

Apache 2 Licensed. See [LICENSE](https://github.com/bayupw/terraform-equinix-cisco8000v/tree/master/LICENSE) for full details.