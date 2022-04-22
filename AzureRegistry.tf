resource "azurerm_container_registry" "acr" {
    name =  "containerRegistry2grupo5"
    resource_group_name = azurerm_resource_group.resourcegroup.name
    location = azurerm_resource_group.resourcegroup.location
    sku = "basic"
    admin_enabled = true
}
 
