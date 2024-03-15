variable "ami_image_name" {

  default = "ami-07d9b9ddc6cd8dd30"

  type = string

  description = "This is a variable for AMI image"

}

variable "instance_type" {

  type = string

  description = "This is a variable for Instance type"

}

variable "server_name" {

  type = list(string)
  
}