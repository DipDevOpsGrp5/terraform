resource "azurerm_resource_group" "ggrupo5" {
  name     = "ggrupo5-resources"
  location = "West Europe"
}

resource "azurerm_network_security_group" "sggrupo5" {
  name                = "sggrupo5-security-group"
  location            = azurerm_resource_group.ggrupo5.location
  resource_group_name = azurerm_resource_group.ggrupo5.name
}

resource "azurerm_virtual_network" "grupo5" {
  name                = "grupo5-network"
  location            = azurerm_resource_group.grupo5.location
  resource_group_name = azurerm_resource_group.ggrupo5.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
}

resource "azurerm_subnet" "subnet" {
    name = "internal"
    resource_group_name = azurerm_resource_group.ggrupo5.name
    virtual_network_name = azurerm_resource_network.grupo5.name
    address_prefixes = ["12.0.0.0/20"]

  tags = {
    environment = "Production-Grupo5"
  }
}