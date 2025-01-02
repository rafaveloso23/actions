import {
  for_each = local.execute_import ? { "default" = true } : {}
  to       = module.kv.azurerm_key_vault_access_policy.current["default"]
  id       = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${module.rg.resource_group_name}/providers/Microsoft.KeyVault/vaults/${var.kv_name}/objectId/${module.kv.current_object_id}"
}


data "azurerm_key_vault" "example" {
  name                = var.kv_name
  resource_group_name = var.rg_name
}


output "object_ids" {
  value = [for policy in data.azurerm_key_vault.example.access_policy : policy.object_id]
}

output "object_id_found" {
  value = contains(
    [for policy in data.azurerm_key_vault.example.access_policy : policy.object_id],
    local.specific_object_id
  )
}

locals {
  specific_object_id = module.kv.current_object_id
  execute_import = contains(
    [for policy in data.azurerm_key_vault.example.access_policy : policy.object_id],
    local.specific_object_id
  )
}