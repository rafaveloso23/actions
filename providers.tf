# variable "oidc_token" {}
# variable "oidc_token_file_path" {}
# variable "oidc_request_token" {}
# variable "oidc_request_url" {}

# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
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
  client_id       = "5271f41f-e8ce-4cb2-aa1d-1eacae1d4eee"
  use_oidc        = true

  # # for GitHub Actions
  # oidc_request_token = var.oidc_request_token
  # oidc_request_url   = var.oidc_request_url

  tenant_id = "0eed3ea8-f35c-4862-b14a-9809318064c7"
}

data "azurerm_client_config" "current" {}