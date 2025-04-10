# Use the public subnet module
module "public_subnet" {
  source              = "./public"
  vpc_id              = var.vpc_id
  availability_zone   = var.availability_zones[0]
  subnet_cidr        = var.public_subnet_cidr
  internet_gateway_id = var.internet_gateway_id
  name                = "PublicSubnet"
}

# Use the private subnet module
module "private_subnet" {
  source            = "./private"
  vpc_id            = var.vpc_id
  subnet_cidr      = var.private_subnet_cidr
  availability_zone = var.availability_zones[1]
  name              = "PrivateSubnet"
}