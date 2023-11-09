resource "aws_instance" "ec2" {
    ami = "ami-09100e341bda441c0"
    instance_type = var.list[1]
    #instance_type = var.types["us-east-2"]
}

# just putting variables in the same file for demo - can put in sep file as b4
variable "list" {
    type = list
    default = ["m5.large", "m5.xlarge", "t2.micro"]
}

variable "types" {
    type = map
    default = {
        us-east-1 = "t2.micro"
        us-west-2 = "t2.nano"
        us-south-1 = "t2.small"

    }
}