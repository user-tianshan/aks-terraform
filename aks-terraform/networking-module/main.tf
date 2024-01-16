# main.tf

# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}


resource "azurerm_virtual_network" "aks-vnet" {
  name = "aks-vnet"
  resource_group_name = var.resource_group_name
  address_space = var.vnet_address_space
  location = var.location
}

resource "azurerm_subnet" "control-plane-subnet" {
  name = "control-plane-subnet"
  resource_group_name = var.resource_group_name
  virtual_network_name = "azurerm_virtual_network"
  address_prefixes = ["10.0.1.0/24"]
}


resource "azurerm_subnet" "worker-node-subnet" {
  name = "worker-node-subnet"
  resource_group_name = var.resource_group_name
  virtual_network_name = "azurerm_virtual_network"
  address_prefixes = ["10.0.2.0/24"]
}


resource "azurerm_network_security_group" "aks-nsg" {
  name = "aks-nsg"
  resource_group_name = var.resource_group_name
  location = var.location

 security_rule {
   name = "allow-ssh"
   priority = 1001
   direction = "Inbound"
   access = "Allow"
   protocol = "Tcp"
   source_port_range = "*"
   destination_port_range = "22"
   source_address_prefix = "*"
   destination_address_prefix = "*"
 }


 security_rule {
   name = "kubi-apiserver-rule"
   priority = 1001
   direction = "Inbound"
   access = "Allow"
   protocol = "Tcp"
   source_port_range = "*"
   destination_port_range = "6443"
   source_address_prefix = "*"
   destination_address_prefix = "*"
 }
}

