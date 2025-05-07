provider "aws"{
  region = ap-south-1
}
resource "aws_instance" "my-ec2" {
  ami = var.ami
  associate_public_ip_address = true
  instance_type = var.instance-type
  tags = {
    name = "my-test-instance"
  }

}
