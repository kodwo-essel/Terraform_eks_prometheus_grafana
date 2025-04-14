output "public_subnet_id_az1" {
  value = module.public_subnet_az1.public_subnet_id
}

output "public_subnet_id_az2" {
  value = module.public_subnet_az2.public_subnet_id
}

output "public_subnet_ids_from_subnets" {
  value = [
    module.public_subnet_az1.public_subnet_id,
    module.public_subnet_az2.public_subnet_id
  ]
  
}

output "private_subnet_id_from_subnets" {
  value = module.private_subnet.private_subnet_id
  
}
output "subnet_ids" {
  value = [
    module.public_subnet_az1.public_subnet_id,
    module.public_subnet_az2.public_subnet_id,
    module.private_subnet.private_subnet_id
  ]
}
