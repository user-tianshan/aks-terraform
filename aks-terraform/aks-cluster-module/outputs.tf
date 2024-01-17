output "aks_cluster_name" {
  description = "Name of the provisioned cluster."
# value = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.name
  value       = null
}

output "aks_cluster_id" {
  description = "ID of the cluster."
# value = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.id
  value       = null
}

output "aks_kubeconfig" {
  description = "Kubernetes configuration file of the cluster."
# value = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.kube_c
  value       = null
}
