module "rg" {
  source = "git::https://${{ secrets.TOKEN }}@github.com/rafaveloso23/tf-modules.git//rg-vnet?ref=main"

  # Pass required variables
  name       = "example-rg"
  location   = "eastus"
}
