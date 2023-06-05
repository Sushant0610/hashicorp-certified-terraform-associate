# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami               = "ami-0715c1897453cabd1"
  instance_type     = "t2.micro"
  #availability_zone = "us-east-1a"
  availability_zone = "us-east-1b"
  tags = {
    "Name" = "web"
    "tag1" = "Update-test-1"
  }
}