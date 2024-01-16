# variables.tf

variable "resource_group_name" {
  description = "The name of the Azure Resource Group where the networking resources will be deployed."
  type        = string
  #default = "networking-resource-group"
  default = "aks-rg"
}

variable "location" {
  description = "The Azure region where the networking resources will be deployed to."
  type        = string
  default     = "UK South"  # Default to UK south region
}

variable "vnet_address_space" {
  description = "Specifies the address space for the Virtual Network (VNet)"
  type        = list(string)
  default = ["10.0.0.0/16"]
}
