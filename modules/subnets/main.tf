# Use the public subnet module
module "public_subnet_az1" {
  source              = "./public"
  vpc_id              = var.vpc_id
  availability_zone   = var.availability_zones[0]
  subnet_cidr        = var.public_subnet_cidrs[0]
  internet_gateway_id = var.internet_gateway_id
  name                = "PublicSubnetAZ1"
}

module "public_subnet_az2" {
  source              = "./public"
  vpc_id              = var.vpc_id
  availability_zone   = var.availability_zones[1]
  subnet_cidr        = var.public_subnet_cidrs[1]
  internet_gateway_id = var.internet_gateway_id
  name                = "PublicSubnetAZ2"
}


# Use the private subnet module
module "private_subnet" {
  source            = "./private"
  vpc_id            = var.vpc_id
  subnet_cidr      = var.private_subnet_cidr
  availability_zone = var.availability_zones[1]
  name              = "PrivateSubnet"
}