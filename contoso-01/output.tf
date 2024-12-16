output "existing_rg_name" {
  value = try(data.azurerm_resource_group.rg_data["existing"].name, null)
}