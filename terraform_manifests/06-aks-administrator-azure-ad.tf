#create Azure AD group for AKS administrators
resource "azuread_group" "aks-administrators" {
  display_name = "dev-akscluster-Admin" # get it from main.tf
  description = "AKS administrators"
    security_enabled = true
}
