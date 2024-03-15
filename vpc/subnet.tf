resource "aws_subnet" "subnet" {

  for_each = var.subnet

  cidr_block = each.value.cidr_block

  vpc_id = aws_vpc.main.id

  availability_zone = each.value.az

  tags = {
    "Name" = each.key
  }

}