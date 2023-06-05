# Resource Block to create VPC in us-east-1
resource "aws_vpc" "vpc-us-east-1" {
  cidr_block = "10.1.0.0/16"
  tags = {
    "name" = "vpc-us-east-1"
  }
}