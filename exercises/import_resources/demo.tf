resource "aws_instance" "myec2" {
    ami = " ami-0872c164f38dcc49f"
    key_name = "MyTerraformKey"
    vpc_security_group_ids = ["sg-00f0493c57636f2ce"]
    subnet_id = "subnet-980bd5c5"
    instance_type = "t2.micro"
    tags = {
      name = "FirstMachine"
    }
}
# terraform import aws_instance.myec2 i-0298ed541c1331249