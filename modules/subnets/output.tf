output "private_subnet_id_from_subnets" {
  value = module.private_subnet.private_subnet_id
  
}

output "public_subnet_id_from_subnets" {
  value = module.public_subnet.public_subnet_id
}

output "subnet_ids" {
  value = [aws_subnet.private_subnet.id, aws_subnet.public_subnet.id]
  
}