resource "aws_instance" "ec2" {
  ami           = "ami-09100e341bda441c0"
  instance_type = var.list[1]
}