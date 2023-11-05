variable "flag" {}

resource "aws_instance" "env1" {
    ami = "ami-09100e341bda441c0"
    instance_type = "t2.micro"
    count = var.flag == true ? 2 : 0
}

resource "aws_instance" "env2" {
    ami = "ami-09100e341bda441c0"
    instance_type = "t2.nano"
    count = var.flag == false ? 1 : 0
}