vpc_name            = "vpc_saurabh"
vpc_cidr_range      = "10.0.0.0/16"
private_subnet_cidr = "10.0.1.0/24"
public_subnet_cidr  = "10.0.2.0/24"
private_subnet_name = "private_subnet_saurabh"
public_subnet_name  = "public_subnet_saurabh"
az = {
  "az1" = "us-east-1a"
  "az2" = "us-east-1b"
}
internet_gateway_name = "igw"

ami_image = "ami-07d9b9ddc6cd8dd30"

instance_type = "t2.micro"