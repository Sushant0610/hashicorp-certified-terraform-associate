# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "web"
  }
  lifecycle {
    create_before_destroy = true
  }
}