# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-0889a44b331db0194"
  instance_type = "t2.micro"
  count         = 5
  tags = {
    "Name" = "web-${count.index}"
  }
}