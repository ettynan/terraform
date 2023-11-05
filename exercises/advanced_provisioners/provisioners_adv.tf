resource "aws_security_group" "allow_port22" {
  name = "allow_port22"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "ec2_demo" {
  ami                    = "ami-09100e341bda441c0"
  instance_type          = "t2.micro"
  key_name               = "MyTerraformKey"
  vpc_security_group_ids = [aws_security_group.allow_port22.id]

  provisioner "remote-exec" {
    on_failure = continue
    inline = [
      "sudo yum -y install nano"
    ]
  }

  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo yum -y remove nano"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    private_key = file("./MyTerraformKey.pem")
    host        = self.public_ip
  }
}
