module "stg" {
  count = var.criar_storage_account ? 1 : 0

  source = "git::https://github.com/rafaveloso23/tf-modules.git//stg?ref=main"
  rg_name = "rvss"
  rg_location = var.rg_location

  depends_on = [ module.rg ]
}

output "stg_name" {
  value = try(module.stg[0].name, null)
}