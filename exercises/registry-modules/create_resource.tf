module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "MyTerraformKey"
  monitoring             = true
  vpc_security_group_ids = ["sg-0354ad099fea422cc"]
  subnet_id              = "subnet-980bd5c5"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}