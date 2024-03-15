variable "vpc_name" {

  default = "vpc_saurabh"
  type    = string

}

variable "vpc_cidr_range" {

  default = "10.0.0.0/16"

  type = string
}

variable "private_subnet_name" {

  default = "private_subnet"

  type = string

}

variable "az" {

  type = any

  default = {
    "az1" = "us-east-1a",

    "az2" = "us-east-1b"
  }

}

variable "public_subnet_name" {

  default = "public_subnet"

  type = string

}

variable "private_subnet_cidr" {

  default = "10.0.1.0/24"

  type = string

}

variable "public_subnet_cidr" {

  default = "10.0.2.0/24"

  type = string

}

variable "internet_gateway_name" {

  type = string

}

variable "ami_image" {

  type = string

}

variable "instance_type" {

  type = string

}


variable "subnet" {

  type        = any
  description = "This variable holds all details required to create a subnet"

}

variable "inbound_traffic" {
  type = any
}

