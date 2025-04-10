output "pubic_ip" {
  value = aws_instance.docker_host.public_ip
}

output "private_ip" {
  value = aws_instance.docker_host.private_ip
}

output "instance_id" {
  value = aws_instance.docker_host.id
}

output "instance_name" {
  value = aws_instance.docker_host.tags["Name"]
}