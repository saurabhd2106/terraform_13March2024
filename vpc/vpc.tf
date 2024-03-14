resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_range
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}