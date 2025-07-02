variable "client_id" {
  description = "Azure client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure client secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure tenant ID"
  type        = string
}

variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default     = "aks-private-rg"
}

variable "aks_vnet_id" {
  description = "The ID of the existing AKS Virtual Network"
  type        = string
  default     = "/subscriptions/ff5c0a5d-6ff2-4586-8c4e-73497a52972d/resourceGroups/aks-private-rg/providers/Microsoft.Network/virtualNetworks/aks-vnet"
}
