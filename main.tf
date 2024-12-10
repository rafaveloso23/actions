resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-${var.environment}"
  location = "eastus"
}