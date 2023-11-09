resource "aws_instance" "my-ec2" {
  ami           = "ami-0ad86651279e2c354"
  instance_type = "t2.small"
}