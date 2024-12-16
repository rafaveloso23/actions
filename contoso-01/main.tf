module "rg" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//vnet?ref=main"

  # Add any necessary input variables for the module here
  rg_name       = "example-rg"
  rg_location   = "eastus"
  environment   = var.environment
  rg_novo       = true
}
