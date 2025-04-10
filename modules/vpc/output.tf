output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id_from_vpc" {
  value = module.subnets.public_subnet_id_from_subnets
}

output "private_subnet_id_from_vpc" {
  value = module.subnets.private_subnet_id_from_subnets
}

