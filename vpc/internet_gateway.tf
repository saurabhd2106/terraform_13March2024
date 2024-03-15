resource "aws_internet_gateway" "name" {

  vpc_id = aws_vpc.main.id

  //Add explicit dependency
  depends_on = [ aws_subnet.subnet ]

  tags = {
    "Name" = var.internet_gateway_name
  }

}