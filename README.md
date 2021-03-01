# IBM Cloud VPC Module
IBM Cloud Terraform VPC Module

## Usage
If you need to include an IBM Cloud VPC in your deployment you can use the following code:

```
data "ibm_resource_group" "group" {
  name = var.resource_group
}

module vpc {
  source         = "git::https://github.com/ryantiffany/IBM-VPC-Module.git"
  name           = var.name
  resource_group = data.ibm_resource_group.group.id
  tags           = ["project:${var.name}", "region:${var.region}"]
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name of the VPC | `string` | n/a | yes |
| resource\_group | ID of the resource group to associate with the virtual server instance | `string` | n/a | yes |
| address\_prefix\_management | Indicates whether a default address prefix should be created automatically (auto) or manually (manual) for each zone in this VPC | `string` | `auto` | no |
| classic\_access | Specify if you want to create a VPC that can connect to classic infrastructure resources. | `string` | `false` | no |
| tags | List of tags to add on all created resources | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the VPC. |
| crn | The CRN of the VPC.  | 
| default_security_group | The ID for the default VPC Security group. |
| default_network_acl | The ID for the default VPC Network ACL |
| subnets | A list of subnets that are attached to a VPC. | 
| cse_source_addresses | A list of the cloud service endpoints that are associated with your VPC, including their source IP address and zone. | 


## Status
[![Build Status](https://drone.lab.tiffany-family.net/api/badges/ryantiffany/IBM-VPC-Module/status.svg)](https://drone.lab.tiffany-family.net/ryantiffany/IBM-VPC-Module)
