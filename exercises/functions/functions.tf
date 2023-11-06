locals {
    time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}

variable "region" {
    default = "us-west-2"
}

variable "ami" {
    type = map
    default = {
        "us-east-1" = "ami-03eb6185d756497f8"
        "us-west-1" = "ami-057f59841fdca7399"
        "us-west-2" = "ami-09100e341bda441c0"
    }
}

resource "aws_instance" "ec2" {
    ami = lookup(var.ami, var.region)
    instance_type = "t2.micro"
}

output "timestamp" {
    value = local.time
}