resource "azurerm_resource_group" "rg-hub" {
  name     = "rg-actions"
  location = "eastus"
}

resource "azurerm_resource_group" "rg-hub-dev" {
  name     = "rg-actions-${var.environemnt}"
  location = "eastus"
}