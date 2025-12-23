resource "azurerm_network_interface" "nic_name" {
  
  name                = "nic-dev"
  location            = "central india"
  resource_group_name = "rg-dev"
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet_name.id
    private_ip_address_allocation = "Dynamic"
  }
}