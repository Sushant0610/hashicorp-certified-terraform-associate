# Terraform Block
terraform {
  required_version = "~> 1.4"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.52"
    }
  }
}

# Providers Block for us-east-1
provider "aws" {
  profile = "default"
  region = "us-east-1"
}

# Providers Block for us-west-1
provider "aws" {
  profile = "default"
  region = "us-west-1"
  alias = "aws-west-1"
}