variable "ami_image_name" {

    type = string
    description = "This is a variable to store ami image name"
}

variable "instance_type" {

    default = "t2.micro"

    type = string
    description = "This is a variable to store instance type"
  
}

variable "vmName" {

    type = string
    description = "This is a variable to store the name of the VM"
  
}