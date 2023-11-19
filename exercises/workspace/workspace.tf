resource "aws_instance" "ec2" {
  ami           = "ami-0ad86651279e2c354"
  instance_type = lookup(var.my-var, terraform.workspace)
}

variable "my-var" {
  type = map(string)
  default = {
    default    = "t2.small"
    dev        = "t2.nano"
    staging    = "t2.small"
    production = "t2.micro"
  }
}