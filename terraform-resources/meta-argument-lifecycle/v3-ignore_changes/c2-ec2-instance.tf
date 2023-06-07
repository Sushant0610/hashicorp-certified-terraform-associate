# Create EC2 Instance
resource "aws_instance" "web" {
  ami = "ami-0715c1897453cabd1"
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    ignore_changes = [ tags ]
  }
}