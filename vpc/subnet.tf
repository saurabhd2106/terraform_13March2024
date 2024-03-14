resource "aws_subnet" "public_subnet" {

  cidr_block = var.public_subnet_cidr

  vpc_id = aws_vpc.main.id

  availability_zone = var.az["az1"]

  tags = {
    "Name" = var.public_subnet_name
  }

}

resource "aws_subnet" "private_subnet" {

  cidr_block = var.private_subnet_cidr

  vpc_id = aws_vpc.main.id

  availability_zone = var.az["az2"]

  tags = {
    "Name" = var.private_subnet_name
  }

}