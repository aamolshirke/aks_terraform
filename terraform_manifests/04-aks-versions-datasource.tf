#create datasource to get the available versions of AKS
data "azurerm_kubernetes_service_versions" "current" {
  location = var.location
  include_preview = false
}