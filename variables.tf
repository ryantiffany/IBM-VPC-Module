variable name {
  description = "A name for your VPC. This will also be added as a tag on the VPC resource"
  type        = string
  default     = ""
}

variable classic_access {
  description = "Specify if you want to create a VPC that can connect to classic infrastructure resources. Default is false."
  default     = false
}

variable address_prefix_management {
  description = "Indicates whether a default address prefix should be created automatically (auto) or manually (manual) for each zone in this VPC. Default value is auto."
  type        = string
  default     = "auto"
}

variable resource_group {
  description = "Resource group for deployed assets."
  type        = string
  default     = ""
}

variable tags {
  description = "Tags to add to VPC."
  type        = list
  default     = []
}
