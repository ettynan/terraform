resource "aws_instance" "myec2" {
    ami = "ami-09100e341bda441c0"
    instance_type = "t2.micro"
}

resource "aws_eip" "myeip" {
    domain = "vpc"
}

resource "aws_eip_association" "my_eip_assoc" {
    instance_id = aws_instance.myec2.id
    allocation_id = aws_eip.myeip.id
}

# run EC2 and connect it to another resource