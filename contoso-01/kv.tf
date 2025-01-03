module "kv" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//kv?ref=main"

  kv_novo                    = var.kv_novo
  kv_existente               = var.kv_existente
  name                       = var.kv_name
  location                   = module.rg.resource_group_location
  rg_name                    = module.rg.resource_group_name
  # soft_delete_retention_days = var.soft_delete_retention_days
  # purge_protection_enabled   = var.purge_protection_enabled
  # sku_name                   = var.sku_name_kv
}
