terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
  }
 backend "s3" {

    bucket = "terraform-saurabh-14marc2024"  
    key = "state_file/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "state_lock_saurabh"
  }
 
}

provider "aws" {
  # Configuration options

  region = "us-east-1"
}