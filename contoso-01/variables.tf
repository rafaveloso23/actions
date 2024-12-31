variable "environment" {
    type    = string
    default = "dev"
}

variable "client_id" {
    type    = string
    default = null
}

variable "workspaces" {
    type    = string
    default = null
}

variable "current_object_exist" {
    type    = bool
    #default = true
}

# variable "rg_novo" {
#   description = "Indicates whether to create a new resource group"
#   type        = bool
#   #default     = true
# }

# variable "rg_existente" {
#   description = "Indicates whether to use an existing resource group"
#   type        = bool
#   default     = false
# }

# variable "rg_name" {
#   description = "Base name for the resource group"
#   type        = string
#   #default     = "rg-actions"
# }

# variable "rg_location" {
#   description = "Azure region for the resource group"
#   type        = string
#   #default     = "eastus"
# }

# variable "sku_name_kv" {
#   type = string
# }

# variable "kv_name" {
#   type = string
# }

# variable "kv_novo" {
#   type = bool
# }

# variable "kv_existente" {
#   description = "Indicates whether to use an existing key vault"
#   type        = bool
#   default     = false
# }

# variable "soft_delete_retention_days" {
#   description = "Indicates whether to use an existing key vault"
#   type        = number
# }

# variable "purge_protection_enabled" {
#   description = "Indicates whether to use an existing key vault"
#   type        = bool
# }
