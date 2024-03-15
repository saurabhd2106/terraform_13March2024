resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.name.id
  }

  tags = {
    Name = "public_route_saurabh"
  }
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.subnet["public_subnet"].id
  route_table_id = aws_route_table.public_route.id
}


resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "private_route_saurabh"
  }
}

resource "aws_route_table_association" "private_association" {
  subnet_id      = aws_subnet.subnet["private_subnet"].id
  route_table_id = aws_route_table.private_route.id
}
