resource "aws_instance" "ec2" {
  ami           = "ami-09100e341bda441c0"
  instance_type = "t2.micro"
  key_name      = "MyTerraformKey"

  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras install -y nginx1.12",
      "sudo systemctl start nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ec2-user"
      private_key = file("./MyTerraformKey.pem")
      host        = self.public_ip
    }
  }
}