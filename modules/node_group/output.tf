output "node_group_name" {
  value = aws_eks_node_group.eks_node_group.node_group_name
}

output "desired_size" {
  value = aws_eks_node_group.eks_node_group.scaling_config[0].desired_size
}

output "max_size" {
  value = aws_eks_node_group.eks_node_group.scaling_config[0].max_size
}

output "min_size" {
  value = aws_eks_node_group.eks_node_group.scaling_config[0].min_size
}