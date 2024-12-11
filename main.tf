resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-t-${var.environment}"
  location = "eastus"
}