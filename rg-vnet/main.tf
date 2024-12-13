module "rg" {
  source = "git::https://github.com/rafaveloso23/tf-modules.git//rg-vnet?ref=main"

  # Add module-specific variables
  name       = "example-rg"
  location   = "eastus"

}
