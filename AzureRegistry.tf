resource "azurerm_container_registry" "acr" {
    name =  "containerRegistry2grupo5"
    resource_group_name = azurerm_resource_group.ggrupo5.name
    location = azurerm_resource_group.ggrupo5.location
    sku = "Basic"
    admin_enabled = true
}
 
