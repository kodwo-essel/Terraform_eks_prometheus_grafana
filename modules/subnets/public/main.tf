resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = true  # Ensure public IPs are assigned to instances

  tags = {
    Name = var.name
  }
}

resource "aws_route_table" "public-rt" {
  vpc_id = var.vpc_id
}

resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public-rt.id
  destination_cidr_block = "0.0.0.0/0"  # Default route to the internet
  gateway_id            = var.internet_gateway_id
}

resource "aws_route_table_association" "public-rta" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public-rt.id
}
