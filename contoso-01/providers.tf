terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }

  subscription_id = "cc323661-bdfb-4e37-8224-b9f41308d182"
  client_id       = var.client_id
  #client_id = "5271f41f-e8ce-4cb2-aa1d-1eacae1d4eee"
  use_oidc  = true
  tenant_id = "0eed3ea8-f35c-4862-b14a-9809318064c7"
}

data "azurerm_client_config" "current" {}
