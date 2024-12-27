data "azurerm_resource_group" "rg_data" {
  for_each = var.rg_existente ? { "existing" = "${var.rg_name}-${var.environment}" } : {}
  name     = each.value
}

data "azurerm_key_vault" "kv" {
  for_each = var.kv_existente ? { "existing" = "${var.kv_name}-${var.environment}" } : {}
  name                = each.value
  resource_group_name = local.resource_group_name
}