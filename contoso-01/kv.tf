resource "azurerm_key_vault" "kv" {
  for_each = var.kv_novo ? { "new" = "${var.kv_name}-${var.environment}" } : {}
  name                        = each.value
  location                    = local.resource_group_location
  resource_group_name         = local.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = var.soft_delete_retention_days
  purge_protection_enabled    = var.purge_protection_enabled
  sku_name                    = var.sku_name_kv
}