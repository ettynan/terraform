provider "aws" {}

resource "aws_instance" "ec2" {
    ami = "ami-0ad86651279e2c354"
    instance_type = "t2.micro"
}