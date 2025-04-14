module "iam" {
  source = "../modules/iam"
  eks_cluster_role_name = var.eks_cluster_role_name
  eks_node_group_role_name = var.eks_node_group_role_name
}

module "vpc" {
  source = "../modules/vpc"
  vpc_cidr  = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidr = var.private_subnet_cidr
  availability_zones = var.availability_zones
}

module "eks_cluster" {
  source           = "../modules/eks_cluster"
  cluster_name     = var.eks_cluster_name
  subnet_ids       = module.vpc.public_subnet_ids_from_vpc # Replace
  cluster_role_arn = module.iam.eks_cluster_role_arn
  depends_on_resources = [module.iam]
}

module "node_group" {
  source          = "../modules/node_group"
  cluster_name    = module.eks_cluster.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = module.iam.eks_node_role_arn
  subnet_ids      = module.vpc.public_subnet_ids_from_vpc # Replace
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
}