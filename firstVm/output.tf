output "public_ip_address" {

  value = aws_instance.web_server.public_ip

}

output "private_ip_address" {

  value = aws_instance.web_server.private_ip

}