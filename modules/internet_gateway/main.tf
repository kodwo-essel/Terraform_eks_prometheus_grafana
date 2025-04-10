# Create the Internet Gateway (for public subnets)
resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id
}