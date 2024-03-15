resource "aws_key_pair" "saurabh_key" {

    key_name = "myKey"

    public_key = ""
  
}

data "aws_key_pair" "key_ec2" {

    key_name = "myKey"
  
}