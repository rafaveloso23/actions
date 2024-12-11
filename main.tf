resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-est-${var.environment}"
  location = "eastus"
}