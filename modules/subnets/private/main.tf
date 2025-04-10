resource "aws_subnet" "private_subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.availability_zone

  tags = {
    Name = var.name
  }
}

resource "aws_route_table" "private-rt" {
  vpc_id = var.vpc_id
}

# No public route; this subnet is private

resource "aws_route_table_association" "private-rta" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private-rt.id
}


