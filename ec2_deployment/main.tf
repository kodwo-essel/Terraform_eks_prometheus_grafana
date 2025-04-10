module "vpc" {
  source               = "../modules/vpc"
  cidr_block           = var.vpc_cidr
  public_subnet_cidr   = var.public_subnet_cidr
  private_subnet_cidr  = var.private_subnet_cidr
  availability_zones   = var.availability_zones
}

module "sg" {
  source = "../modules/security_group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source            = "../modules/ec2"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  subnet_id         = module.vpc.public_subnet_id_from_vpc
  security_group_id = module.sg.security_group_id
  public_ip         = var.public_ip
}

