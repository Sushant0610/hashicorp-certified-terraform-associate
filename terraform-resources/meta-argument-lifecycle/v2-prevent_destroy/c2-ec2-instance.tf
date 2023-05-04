# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0889a44b331db0194"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "web1"
  }
  lifecycle {
    prevent_destroy = false
  }
}