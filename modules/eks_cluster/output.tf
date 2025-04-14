output "cluster_name" {
  value = aws_eks_cluster.eks_cluster.name
}

output "endpoint" {
  value = aws_eks_cluster.eks_cluster.endpoint
}

output "certificate_authority" {
  value = aws_eks_cluster.eks_cluster.certificate_authority[0].data
}

output "subnet_ids" {
  value = aws_eks_cluster.eks_cluster.vpc_config[0].subnet_ids
  
}