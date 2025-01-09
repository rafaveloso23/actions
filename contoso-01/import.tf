# # # This locals will iterate over each access_policy entries from 'local.data_kv_access_policy';
# # # The 'policy.object_id' extracts the object_id from each policy, the result should be like this '[ "object-id-1", "object-id-2" ]';
# # # The second argument will validate the specific object id that we are looking for 'local.specific_object_id'
# # # The contains() function checks if the list [ "object-id-1", "object-id-2" ] includes the value of local.specific_object_id;
# # # The combination of the functions contains(keys(...), ...) will give use the possibility to check if the specific object exist in the list of keys, if not the value will {}
locals {
  data_kv_access_policy = var.kv_existente && contains(keys(data.azurerm_key_vault.kv), "existing") ? data.azurerm_key_vault.kv["existing"].access_policy : []
  specific_object_id    = var.specific_object_id
  execute_import = contains(
    [for policy in local.data_kv_access_policy : policy.object_id],
    local.specific_object_id
  )
}
#Import condition, will only import the resource if the object_id_found = true, before the first execution.
import {
  for_each = local.execute_import ? { "default" = true } : {}
  to       = module.kv_policy.azurerm_key_vault_access_policy.current["default"]
  id       = "/subscriptions/${data.azurerm_client_config.current.subscription_id}/resourceGroups/${var.rg_name_kv}/providers/Microsoft.KeyVault/vaults/${var.kv_name}/objectId/${var.specific_object_id}"
}
