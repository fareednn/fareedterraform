terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  # Configuration options
  region     = "ap-south-1"
 
  
}

resource "aws_instance" "web" {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  

  tags = {
    Name = "TerraformInstanceFareed"
  }
}