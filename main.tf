resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-esst-${var.environment}"
  location = "eastus"
}