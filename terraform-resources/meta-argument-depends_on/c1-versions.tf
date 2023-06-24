# Terraform Block
terraform {
  required_version = "~> 1.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.56"
    }
  }
}

# Provider Block
provider "aws" {
  profile = "sushant"
  region  = "us-east-1"
}