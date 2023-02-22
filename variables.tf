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

variable "create_ssh_key" {
  description = "Set to true to create a new key."
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

variable "core_count" {
  description = "Number of CPU cores used by device."
  type        = number
  default     = 2
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

variable "type_code" {
  description = "."
  type        = string
  default     = "C8000V"
}

variable "package_code" {
  description = "Device software package code."
  type        = string
  default     = "network-essentials"
}

variable "device_version" {
  description = "Device software software version."
  type        = string
  default     = "17.06.01a"
}

variable "notifications" {
  description = "List of email addresses that will receive device status notifications."
  type        = list(string)
  default     = ["myemail@equinix.com"]
}

variable "ssh_username" {
  description = "SSH username."
  type        = string
  default     = "csradmin1"
}

variable "ssh_key_name" {
  description = "SSH key name."
  type        = string
  default     = "mykey"
}

variable "ssh_public_key" {
  description = "SSH public key."
  type        = string
  default     = null
}