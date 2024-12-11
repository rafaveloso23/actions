resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-te-${var.environment}"
  location = "eastus"
}