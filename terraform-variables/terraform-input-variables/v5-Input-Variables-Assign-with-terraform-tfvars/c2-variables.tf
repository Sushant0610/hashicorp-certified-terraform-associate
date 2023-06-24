# Input Variables
variable "aws_region" {
  description = "Region in which AWS resources to be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "AMI ID"
  type        = string
  default     = "ami-022e1a32d3f742bd8"
}

variable "ec2_instance_count" {
  description = "EC2 Instance Count"
  type        = number
  default     = 2
}


variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.micro"
}
