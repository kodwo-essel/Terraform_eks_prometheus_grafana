output "instance_name" {
  value = module.ec2.instance_name
  description = "The name of the EC2 instance"
}

output "instance_id" {
  value = module.ec2.instance_id
  description = "The ID of the EC2 instance"
}

output "instance_public_ip" {
  value = module.ec2.pubic_ip
  description = "The public IP address of the EC2 instance"
}

output "instance_private_ip" {
  value =module.ec2.private_ip
  description = "The private IP address of the EC2 instance"
}
