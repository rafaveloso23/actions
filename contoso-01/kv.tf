module "kv" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//kv?ref=main"

  kv_novo                    = true
  kv_existente               = false
  name                       = "kvrvsfs-${var.environment}"
  location                   = module.rg.resource_group_location
  rg_name                    = module.rg.resource_group_name
  soft_delete_retention_days = 10
  purge_protection_enabled   = false
  sku_name                   = "standard"
}
