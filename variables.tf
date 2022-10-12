variable "metro_code" {
  description = "Metro location."
  type        = string
  default     = "DC"
}

variable "create_acl" {
  description = "Set to true to create a new ACL."
  type        = bool
  default     = false
}

variable "acl_template_id" {
  description = "Existing ACL template ID."
  type        = string
  default     = null
}

variable "acl_name" {
  description = "ACL name."
  type        = string
  default     = "my-acl"
}

variable "acl_description" {
  description = "ACL description."
  type        = string
  default     = "my-acl"
}

variable "self_managed" {
  description = " Boolean value that determines device management mode, i.e., self-managed or Equinix managed."
  type        = bool
  default     = true
}

variable "byol" {
  description = "Boolean value that determines device licensing mode, i.e., bring your own license or subscription (default)."
  type        = bool
  default     = true
}

variable "device_name" {
  description = "Equinix Network Device name."
  type        = string
  default     = "mycisco8000v"
}

variable "device_hostname" {
  description = "Equinix Network Device hostname."
  type        = string
  default     = "mycisco8000v"
}


variable "throughput" {
  description = "."
  type        = number
  default     = 500
}

variable "throughput_unit" {
  description = "."
  type        = string
  default     = "Mbps"
}

variable "type_code" {
  description = "."
  type        = string
  default     = "C8000V"
}

variable "core_count" {
  description = "."
  type        = number
  default     = 2
}

variable "package_code" {
  description = "."
  type        = string
  default     = "network-essentials"
}

variable "notifications" {
  description = "."
  type        = list(string)
  default     = ["myemail@equinix.com"]
}

variable "device_version" {
  description = "."
  type        = string
  default     = "17.06.01a"
}

variable "username" {
  description = "."
  type        = string
  default     = "eqxadmin"
}

variable "ssh_key_name" {
  description = "."
  type        = string
  default     = "key-name"
}