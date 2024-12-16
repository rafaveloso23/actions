# Create a new resource group if rg_novo is true
resource "azurerm_resource_group" "rg_hub_dev" {
  for_each = var.rg_novo ? { "new" = "${var.rg_name}-${var.environment}" } : {}
  name     = each.value
  location = var.rg_location
}
