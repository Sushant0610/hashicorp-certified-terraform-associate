# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web-${count.index}-demo"
  }
}