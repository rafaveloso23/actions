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

variable "rg_novo" {
  description = "Indicates whether to create a new resource group"
  type        = bool
  default     = true
}

variable "criar_storage_account" {
  description = "Indicates whether to create a new resource group"
  type        = bool
  default     = true
}


variable "rg_existente" {
  description = "Indicates whether to use an existing resource group"
  type        = bool
  default     = false
}

variable "rg_name_applicacao" {
  description = "Base name for the resource group"
  type        = string
}

variable "rg_name_kv" {
  description = "Base name for the resource group"
  type        = string
}

variable "rg_location" {
  description = "Azure region for the resource group"
  type        = string
}

variable "specific_object_id" {
  type = string
}

variable "kv_name" {
  type = string
}

variable "kv_novo" {
  type = bool
}

variable "kv_existente" {
  description = "Indicates whether to use an existing key vault"
  type        = bool
  # default     = false
}

variable "soft_delete_retention_days" {
  description = "Indicates whether to use an existing key vault"
  type        = number
  default     = null
}

variable "purge_protection_enabled" {
  description = "Indicates whether to use an existing key vault"
  type        = bool
  default     = null
}

variable "sku_name_kv" {
  type    = string
  default = null
}

variable "access_policies" {
  type = map(object({
    object_id          = string
    key_permissions    = list(string)
    secret_permissions = list(string)
    certificate_permissions = list(string)
  }))
  default = {}
}