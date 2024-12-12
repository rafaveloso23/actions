resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-s${var.environment}"
  location = "eastus"
}