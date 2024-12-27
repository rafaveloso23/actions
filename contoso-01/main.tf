module "vnet" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//vnet?ref=main"


  rg_name       = local.resource_group_name
  rg_location   = local.resource_group_location

}
