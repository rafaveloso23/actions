module "rg" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//rg?ref=main"

  rg_novo      = true
  rg_existente = false
  name         = "rg-actions-dev"
  location     = "eastus"
}
