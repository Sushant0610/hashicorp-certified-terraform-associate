# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-0715c1897453cabd1"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "Web"
  }
  lifecycle {
    ignore_changes = [availability_zone, tags]
  }
}