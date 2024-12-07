resource "azurerm_resource_group" "rg-hub" {
  name     = "rg-actions-${secrets.AZURE_CLIENT_ID_DEV}"
  location = "eastus"
}