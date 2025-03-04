
#azure resource group
resource "azurerm_resource_group" "aks-rg" {
  name     = "${var.aks_environment}-${var.resource_group_name}"
  location = var.location

}
