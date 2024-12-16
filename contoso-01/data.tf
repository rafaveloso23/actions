# Reference an existing resource group if rg_existente is true
data "azurerm_resource_group" "rg_data" {
  for_each = var.rg_existente ? { "existing" = "${var.rg_name}-${var.environment}" } : {}
  name     = each.value
}