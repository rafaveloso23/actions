variable "execute_import" {
  description = "Flag to determine whether to execute the import"
  type        = bool
  default     = false
}

import {
  for_each = var.execute_import ? { "default" = false } : {}
  to = module.kv.azurerm_key_vault_access_policy.current["default"]
  id = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${module.rg.resource_group_name}/providers/Microsoft.KeyVault/vaults/${var.kv_name}/objectId/${module.kv.current_object_id}"
}
