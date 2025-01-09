module "kv" {
  source   = "git::https://github.com/rafaveloso23/tf-modules.git//kv?ref=main"
  for_each = var.kv_novo ? { "new" = "${var.kv_name}" } : {}

  name                       = each.value
  location                   = var.rg_location
  rg_name                    = var.rg_name_kv
  specific_object_id         = var.specific_object_id
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled   = var.purge_protection_enabled
  sku_name                   = var.sku_name_kv

  depends_on = [ module.rg ]
}


locals {
  key_vault_name = var.kv_novo ? module.kv["new"].key_vault_name : data.azurerm_key_vault.kv["existing"].name
  key_vault_id   = var.kv_novo ? module.kv["new"].id : data.azurerm_key_vault.kv["existing"].id
}
