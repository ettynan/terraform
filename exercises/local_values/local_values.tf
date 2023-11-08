locals {
    common_tags = {
        Owner = "Team 1"
        service = "engineering"
    }
}

resource "aws_instance" "ec2" {
    ami = "ami-09100e341bda441c0"
    instance_type = "t2.micro"
    tags = local.common_tags
}

resource "aws_ebs_volume" "ebs" {
    availability_zone = "us-west-2"
    size = 10
    tags = local.common_tags
}