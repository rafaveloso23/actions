resource "azurerm_resource_group" "rg-hub" {
  name     = "rg-actions-${var.azure_client_id}"
  location = "eastus"
}