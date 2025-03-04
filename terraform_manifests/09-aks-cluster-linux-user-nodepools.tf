resource "azurerm_kubernetes_cluster_node_pool" "linuxpool"{
    zones = [1, 2, 3]
    auto_scaling_enabled = true
    kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
    max_count = 3
    min_count = 1
    name = "linuxpool"
    node_count = 1
    mode = "User"
    orchestrator_version = data.azurerm_kubernetes_service_versions.current.latest_version
    os_disk_size_gb = 30
    os_type = "Linux"
    vm_size = "Standard_DS2_v2"
    priority = "Regular"
    node_labels = {
        "environment" = "var.aks_environment"
        nodepoolos = "Linux"
        nodepooltype = "user"
        "app" = "javaapp"
    }
    tags = {
        "environment" = "var.aks_environment"
        nodepoolos = "linux"
        nodepooltype = "user"
        "app" = "javaapp"
    }




}