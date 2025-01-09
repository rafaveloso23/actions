module "kv_policy" {
  source             = "git::https://github.com/rafaveloso23/tf-modules.git//kv_access_policy?ref=main"
  key_vault_id       = local.key_vault_id
  specific_object_id = var.specific_object_id
  access_policies    = var.access_policies
  depends_on         = [module.kv, data.azurerm_key_vault.kv]
}
