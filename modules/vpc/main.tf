# Create the VPC
resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  enable_dns_support = true
  enable_dns_hostnames = true
}

module "internet_gateway" {
  source              = "../internet_gateway"
  vpc_id              = aws_vpc.main.id
  
}

module "subnets" {
  source              = "../subnets"
  vpc_id              = aws_vpc.main.id
  availability_zones  = var.availability_zones
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  internet_gateway_id = module.internet_gateway.internet_gateway_id
}
