provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my-ec2" {
  ami                    = var.ami
  instance_type          = var.instance-type
  associate_public_ip_address = true
  subnet_id = "subnet-0c83772bdcdf35f0d"

  tags = {
    Name = "my-test-instance"
  }
}
