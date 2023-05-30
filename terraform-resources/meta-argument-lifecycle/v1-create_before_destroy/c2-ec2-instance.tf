# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "Web"
  }
  lifecycle {
    create_before_destroy = true
  }
}