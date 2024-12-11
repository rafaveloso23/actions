resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-et-${var.environment}"
  location = "eastus"
}