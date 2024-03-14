resource "aws_security_group" "allow_traffic_for_private" {
  name        = "allow_traffic_for_private"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.main.id

  tags = {
    Name = "allow_private_traffic"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_22_privately" {

  security_group_id = aws_security_group.allow_traffic_for_private.id

  cidr_ipv4   = aws_subnet.public_subnet.cidr_block
  from_port   = 22
  ip_protocol = "tcp"
  to_port     = 22

  tags = {
    "Name" = "allow_22_privately"
  }

}