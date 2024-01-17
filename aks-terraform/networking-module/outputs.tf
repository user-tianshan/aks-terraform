output "vnet_id" {
  description = "The ID of the created VNet."
  # value = <vnet-resource-type>.<vnet-resource-identifier>.id
  value = azurerm_virtual_network.aks-vnet.id
}

output "control_plane_subnet_id" {
  description = "The ID of the control plane subnet."
  # value = <subnet-resource-type>.<control-plane-subnet-identifier>.id
  value = azurerm_subnet.control-plane-subnet.id
}

output "worker_node_subnet_id" {
  description = "The ID of the worker node subnet."
 # value = <subnet-resource-type>.<worker-node-subnet-identifier>.id
  value = azurerm_subnet.worker-node-subnet.id
}

output "networking_resource_group_name" { 
  description = "The name of the Azure Resource Group."
  #value = <resource-group-resource-type>.<resource-group-resource-identifier>.name
  value = azurerm_resource_group.networking.name
}

output "aks_nsg_id" {
  description = "The ID of the network security group."
  #value = <nsg-resource-type>.<nsg-resource-identifier>.id
  value = azurerm_network_security_group.aks-nsg.id
}
