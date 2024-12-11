resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-st-${var.environment}"
  location = "eastus"
}