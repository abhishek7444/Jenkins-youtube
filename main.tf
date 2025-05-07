provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  associate_public_ip_address = true

  tags = {
    Name = "my-test-instance"
  }
}
