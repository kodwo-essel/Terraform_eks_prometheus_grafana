module "vpc" {
  source               = "../modules/vpc"
  cidr_block           = var.vpc_cidr
  public_subnet_cidrs   = var.public_subnet_cidrs
  private_subnet_cidrs  = var.private_subnet_cidrs
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
  subnet_id         = module.vpc.public_subnet_ids_from_vpc[0]
  security_group_id = module.sg.security_group_id
  public_ip         = var.public_ip
}

