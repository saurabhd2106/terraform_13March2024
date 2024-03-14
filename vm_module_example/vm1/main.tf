module "vm1" {

  source = "../aws_ec2_instance"

  ami_image_name = "ami-07d9b9ddc6cd8dd30"

  instance_type = "t2.large"

  vmName = "vm1-saurabh"
}