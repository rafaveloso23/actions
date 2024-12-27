
locals {
  resource_group_name = var.rg_novo ? azurerm_resource_group.rg_hub["new"].name : data.azurerm_resource_group.rg_data["existing"].name
  resource_group_location = var.rg_novo ? azurerm_resource_group.rg_hub["new"].location : data.azurerm_resource_group.rg_data["existing"].location

  key_vault_name = var.kv_novo ? azurerm_key_vault.kv["new"].name : data.azurerm_key_vault.kv["existing"].name
  key_vault_resource_group_name = var.kv_novo ? azurerm_key_vault.kv["new"].resource_group_name : data.azurerm_key_vault.kv["existing"].resource_group_name
}
