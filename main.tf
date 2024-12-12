resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actisons-s${var.environment}"
  location = "eastus"
}