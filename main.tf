provider "aws" {
  region = var.region
  shared_credentials_files = ["./credentials"]
  profile = "sandbox"
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
