# output "object_ids" {
#   value = [for policy in local.data_kv_access_policy : policy.object_id]
# }

# output "object_id_found" {
#   value = contains(
#     [for policy in local.data_kv_access_policy : policy.object_id],
#     local.specific_object_id
#   )
# }

# output "resource_group_id" {
#   description = "The ID of the resource group created or retrieved."
#   value = var.rg_novo ? module.rg["new"].id : data.azurerm_resource_group.rg_data["existing"].id
# }

# output "is_new_resource_group" {
#   description = "Indicates if a new resource group was created."
#   value       = var.rg_novo
# }

# output "existing_resource_group_used" {
#   description = "Indicates if an existing resource group was used."
#   value       = var.rg_existente
# }

# output "key_vault_id" {
#   description = "The ID of the Key Vault."
#   value       = var.kv_novo ? module.kv["new"].id : data.azurerm_key_vault.kv["existing"].id
# }

# output "key_vault_location" {
#   description = "The location of the Key Vault."
#   value       = var.kv_novo ? module.kv["new"].key_vault_location : data.azurerm_key_vault.kv["existing"].location
# }
