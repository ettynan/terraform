resource "aws_instance" "ec2" {
  ami           = "ami-09100e341bda441c0"
  instance_type = "t2.micro"
  root_block_device {
    encrypted = true
  }
  metadata_options {
    http_tokens = "required"
  }
}

#terraform fmt