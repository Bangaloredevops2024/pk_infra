# resource "azurerm_subnet" "subnet_name" {
#   for_each = var.subnet
#   name = each.value.name
#   resource_group_name = each.value.resource_group_name
#   vnet_name = each.value.vnet_name
#   address_prefixes = each.value.address_prefixes
# }


resource "azurerm_subnet" "subnet_name" {
  for_each             = var.subnet
  name                 = each.value.name
  resource_group_name  = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
  address_prefixes     = each.value.address_prefixes
}
