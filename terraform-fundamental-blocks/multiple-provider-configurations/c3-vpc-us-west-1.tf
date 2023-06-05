# Resource Block to create VPC in us-west-1
resource "aws_vpc" "vpc-us-west-1" {
  cidr_block = "10.1.0.0/16"
  provider   = aws.aws-west-1
  tags = {
    "name" = "vpc-us-west-1"
  }
}