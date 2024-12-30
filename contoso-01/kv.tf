module "access_policy_validate" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//data_access_policy?ref=main"
  rg_name = module.rg.resource_group_name
  name    = "testrkvsd"
}

module "kv" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//kv?ref=main"

  kv_novo                    = false
  kv_existente               = true
  name                       = "testrkvsd"
  location                   = module.rg.resource_group_location
  rg_name                    = module.rg.resource_group_name
  is_object_id_in_list       = var.current_object_exist
}
