resource "azurerm_kubernetes_cluster" "kubernetescluster" {
    name =  "aksgrupo5"
    location = azurerm_resource_group.ggrupo5.location
    resource_group_name = azurerm_resource_group.ggrupo5.name
    dns_prefix = "aksl"
    kubernetes_version = "1.23.5"

    default_node_pool {
        name = "default"
        node_count = 1
        vm_size = "Standard_D2_v2"
       # vnet_subnet_id = azurerm_subnet.subnetaks.id
        enable_auto_scaling = true
        max_count = 2
        min_count = 1
    }
    service_principal {
    client_id = "miuser"
    client_secret = "miclave"
    }
    network_profile {
      network_plugin = "azure"
      network_policy = "azure"
    }
#    role_based_access_control {
#        azureazure_active_directory {
#            client_app_id = ""
#            server_app_id = ""
#            server_app_secret = ""
#            tenant_id = ""         
#        } 
#    }
}
 
