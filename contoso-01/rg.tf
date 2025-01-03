module "rg" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//rg?ref=main"

  rg_novo      = var.rg_novo
  rg_existente = var.kv_existente
  name         = var.rg_name
  location     = var.rg_location
}
