resource "azurerm_kubernetes_cluster" "kubernetescluster" {
    name =  "aksgrupo5"
    location = azurerm_resource_group.resourcegroup.location
    resource_group_name = azurerm_resource_group.resourcegroup.name
    dns_prefix = "aksl"
    kubernetes_version = "1.18.14"

    default_node_pool {
        name = "default"
        node_count = 1
        vm_size = "Standard_D2_v2"
        vnet_subnet_id = azurerm_subnet.internal.id
        enable_auto_scaling = true
        max_count = 2
        min_count = 1
    }
    service_principal {
    client_id = ""
    clent_secret = ""
    }

    network_profile {
      network_plugin = "azure"
      network_policy = "azure"

    }
    role_based_access_control {
        azureazure_active_directory {
            client_app_id = ""
            server_app_id = ""
            server_app_secret = ""
            tenant_id = ""

          
        } 
    }
}
 