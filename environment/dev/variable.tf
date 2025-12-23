variable "rg" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))
}

# variable "stg_account" {
#   description = "Map of storage account configurations"
#   type = map(object({
#     name                     = string
#     resource_group_name      = string
#     location                 = string
#     account_replication_type = string
#     account_tier             = string
#   }))
# }
variable "vnet" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = string

  }))
}
variable "subnet" {
  type = map(object({
    name             = string
    vnet_name        = string
    resource_group   = string
    address_prefixes = string
  }))

}
# variable "nic" {
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     ip_configuration = object({
#       name                          = string
#       subnet_id                     = string
#       private_ip_address_allocation = string
#     })

#   }))

# }
variable "public_ip" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
  }))

}
variable "vms" {
  description = "Linux VM configuration"
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    nic_key             = string
  }))
}
