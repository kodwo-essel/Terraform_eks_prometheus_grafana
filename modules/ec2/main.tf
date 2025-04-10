resource "aws_instance" "docker_host" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.security_group_id]

  user_data = file("${path.module}/scripts/main.sh")

  associate_public_ip_address = var.public_ip

  tags = {
    Name = "TerraformDockerHost"
  }
}

