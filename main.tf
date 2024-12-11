resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-sst-${var.environment}"
  location = "eastus"
}