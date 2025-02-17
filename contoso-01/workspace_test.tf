# # data "tfe_organization" "test_organization" {
# #   name = "veloso"
# # }

# # # Attempt to fetch the workspace
# # data "tfe_workspace" "existing_workspace" {
# #   count        = var.skip_data_source ? 0 : 1
# #   name         = var.workspace_name
# #   organization = data.tfe_organization.test_organization.name
# # }

# # # Check if workspace exists using try()
# # locals {
# #   workspace_exists = length(data.tfe_workspace.existing_workspace) > 0 ? true : false
# # }

# # # Create the workspace only if it does not exist
# # resource "tfe_workspace" "test" {
# #   count        = local.workspace_exists ? 0 : 1
# #   name         = var.workspace_name
# #   organization = data.tfe_organization.test_organization.name
# # }


# data "tfe_organization" "test_organization" {
#   name = "veloso"
# }

# data "tfe_workspace" "all" {
#   organization = data.tfe_organization.name
# }

# output "workspace_names" {
#   value = data.tfe_workspaces.all.names
# }