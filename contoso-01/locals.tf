# Determine the resource group name and location dynamically
locals {
  resource_group_name = var.rg_novo ? azurerm_resource_group.rg_hub_dev["new"].name : data.azurerm_resource_group.rg_data_dev["existing"].name
  resource_group_location = var.rg_novo ? azurerm_resource_group.rg_hub_dev["new"].location : data.azurerm_resource_group.rg_data_dev["existing"].location
}
