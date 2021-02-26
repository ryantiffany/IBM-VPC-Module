resource ibm_is_vpc vpc {
  name                      = var.name
  classic_access            = var.classic_access
  address_prefix_management = var.address_prefix_management
  resource_group            = var.resource_group
  tags                      = concat(var.tags, ["type:ibm_is_vpc"])
}
