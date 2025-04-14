output "eks_cluster_name_from_eks_deployment" {
  value = module.eks_cluster.cluster_name
}

output "eks_node_group_role_name_from_eks_deployment" {
  value = module.iam.eks_node_role_name
}

output "eks_cluster_role_name_from_eks_deployment" {
    value = module.iam.eks_cluster_role_name
}

output "eks_node_group_name_from_eks_deployment" {
    value = module.node_group.node_group_name
}

output "desired_size_from_eks_deployment" {
    value = module.node_group.desired_size
}

output "max_size_from_eks_deployment" {
    value = module.node_group.max_size
}

output "min_size_from_eks_deployment" {
    value = module.node_group.min_size
}

output "subnet_ids_from_eks_deployment" {
    value = module.eks_cluster.subnet_ids
}