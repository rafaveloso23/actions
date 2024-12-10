terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "cc323661-bdfb-4e37-8224-b9f41308d182"
  client_id       = var.client_id
  use_oidc        = true
  tenant_id = "0eed3ea8-f35c-4862-b14a-9809318064c7"
}

data "azurerm_client_config" "current" {}