#create Azure log analytics workspace
resource "azurerm_log_analytics_workspace" "aks-log-analytics" {
  name                = "log-${random_pet.aksrandom.id}" # get it from main.tf
  location            = var.location
  resource_group_name = "${var.aks_environment}-${var.resource_group_name}"
  sku                 = "PerGB2018"
}