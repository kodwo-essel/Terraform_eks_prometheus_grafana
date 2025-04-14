provider "aws" {
  region = var.region
  shared_credentials_files = ["./credentials"]
  profile = "amawoma"
}

# module "ec2_deployment" {
#   source            = "./ec2_deployment"  # Path to the folder containing your EC2 setup
#   ami_id            = var.ami_id
#   instance_type     = var.instance_type
#   public_ip         = var.public_ip
#   availability_zones = var.availability_zones
#   vpc_cidr = var.vpc_cidr
#   public_subnet_cidr = var.public_subnet_cidr
#   private_subnet_cidr = var.private_subnet_cidr
#   region = var.region
# }

module "eks_deployment" {
  source            = "./eks_deployment"  # Path to the folder containing your EC2 setup
  eks_cluster_name = var.eks_cluster_name
  node_group_name = var.eks_node_group_name
  eks_node_group_role_name = var.eks_node_group_role_name
  eks_cluster_role_name = var.eks_cluster_role_name
  # subnet_ids = module.eks_deployment.vpc.subnet_ids
  desired_size = var.desired_size
  max_size = var.max_size
  min_size = var.min_size
  availability_zones = var.availability_zones
  vpc_cidr = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidr = var.private_subnet_cidr
}