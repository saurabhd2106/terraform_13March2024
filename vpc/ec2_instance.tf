resource "aws_instance" "public_ec2" {

  ami                         = var.ami_image
  instance_type               = var.instance_type
  key_name                    = "myKey"
  availability_zone           = var.az["az1"]
  vpc_security_group_ids      = [aws_security_group.allow_traffic.id]
  subnet_id                   = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  user_data                   = <<-EOF
        #!/bin/bash
        sudo apt update -y
        sudo apt install apache2 -y
        sudo systemctl start apache2
        sudo systemctl enable apache2
        echo "<html><body><h1>Hi there! This is Saurabhs public VM</h1></body></html>" > /var/www/html/index.html
        EOF

  tags = {
    Name = "web_public_saurabh"
  }

}

resource "aws_instance" "private_ec2" {

  ami                    = var.ami_image
  instance_type          = var.instance_type
  key_name               = "myKey"
  availability_zone      = var.az["az2"]
  vpc_security_group_ids = [aws_security_group.allow_traffic_for_private.id]
  subnet_id              = aws_subnet.private_subnet.id
  user_data              = <<-EOF
        #!/bin/bash
         #!/bin/bash
        sudo apt update -y
        sudo apt install apache2 -y
        sudo systemctl start apache2
        sudo systemctl enable apache2
        echo "<html><body><h1>Hi there</h1></body></html>" > /var/www/html/index.html
        EOF

  tags = {
    Name = "web_private_saurabh"
  }

}
