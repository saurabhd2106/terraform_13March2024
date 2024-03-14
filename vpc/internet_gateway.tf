resource "aws_internet_gateway" "name" {

  vpc_id = aws_vpc.main.id

  tags = {
    "Name" = var.internet_gateway_name
  }

}