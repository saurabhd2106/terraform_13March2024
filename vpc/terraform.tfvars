vpc_name       = "vpc_saurabh"
vpc_cidr_range = "10.0.0.0/16"

az = {
  "az1" = "us-east-1a"
  "az2" = "us-east-1b"
}

internet_gateway_name = "igw"

ami_image = "ami-07d9b9ddc6cd8dd30"

instance_type = "t2.micro"

subnet = {
  public_subnet = {
    cidr_block = "10.0.1.0/24",
    az         = "us-east-1a",

  },

  private_subnet = {
    cidr_block = "10.0.2.0/24",
    az         = "us-east-2a"
  }
}

inbound_traffic = {
  allow_http = {

    cidr_block  = "0.0.0.0/0"
    from_port   = 80
    ip_protocol = "tcp"
    to_port     = 80

  },

  allow_ssh = {

    cidr_ipv4   = "0.0.0.0/0"
    from_port   = 22
    ip_protocol = "tcp"
    to_port     = 22

  },

  allow_ssl = {
    cidr_ipv4   = "0.0.0.0/0"
    from_port   = 443
    ip_protocol = "tcp"
    to_port     = 443
  }
}
