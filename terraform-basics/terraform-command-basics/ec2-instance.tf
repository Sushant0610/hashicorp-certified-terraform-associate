# Terraform Settings Block
terraform {
  required_version = "~> 1.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.56"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "sushant"
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
}