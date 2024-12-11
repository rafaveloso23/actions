resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-teste-${var.environment}"
  location = "eastus"
}