module "rg" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//rg?ref=main"
  for_each = var.rg_novo ? { "new" = "${var.rg_name_applicacao}" } : {}
  name         = each.value
  location     = var.rg_location
}
