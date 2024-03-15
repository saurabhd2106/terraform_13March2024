resource "aws_instance" "web_server" {

  ami = var.ami_image_name

  instance_type = var.instance_type

  tags = {
    "Name" = var.server_name[count.index]
  }

  count = length(var.server_name)

  // for_each = toset(var.server_name)

}