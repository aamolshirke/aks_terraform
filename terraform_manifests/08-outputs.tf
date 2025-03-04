#create output
#1. resource group name
#2. resource group location
#3. resource group id
#4. random pet name
#5. random pet id

output "resource_group_name" {
  value = azurerm_resource_group.aks-rg.name
}

output "resource_group_location" {
  value = azurerm_resource_group.aks-rg.location
}

output "resource_group_id" {
  value = azurerm_resource_group.aks-rg.id
}

output "random_pet_name" {
  value = random_pet.aksrandom.id
}

#get Azure AKS latest version
output "aks_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

output "aks_versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

#Azure ad group ID
output "aks_administrators" {
  value = azuread_group.aks-administrators.id
  }


