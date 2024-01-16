# variables.tf

variable "aks_cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
  default = "terraform-aks-cluster"
 
}

variable "cluster_location" {
  description = "Azure region where the AKS cluster will be deployed."
  type        = string
  default = "UK South"

}

variable "dns_prefix" {
  description = "DNS prefix of cluster."
  type        = string
  default = "myaks-project"

}

variable "kubernetes_version" {
  description = "Kubernetes version the cluster will use."
  type        = string
  default = "1.26.6"
 
}

variable "service_principal_client_id" {
  description = "Client ID for the service principal associated with the cluster"
  type        = string
  default = "97afe60d-7976-4cc2-8946-d27d788ba8bf"

}

variable "service_principal_secret" {
  description = "Client Secret for the service principal."
  type        = string
  default = "guz8Q~klR1520~UrlANw8VddZH5FcP3c3BX7Zb41" 
}

variable "vnet_id" {
  description = "The ID of the created VNet."
  type        = string
  
}

variable "control_plane_subnet_id" {
  description = "The ID of the control plane subnet."
  type        = string
  
}

variable "worker_node_subnet_id" {
  description = "The ID of the worker node subnet."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
  default = "aks-rg"
}
