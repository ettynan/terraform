variable "ports" {
  type    = list(number)
  default = [8201, 8202, 8300, 9201]
}

resource "aws_security_group" "dynamic_block_demo" {
  name = "my-security-group"
  dynamic "ingress" {
    for_each = var.ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
# the below can be condensed into a dynamic block with for loop (above)
# ingress {
#     from_port = 8201
#     to_port = 8201
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
# }

# ingress {
#     from_port = 8202
#     to_port = 8202
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
# }

# ingress {
#     from_port = 8300
#     to_port = 8300
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
# }

# ingress {
#     from_port = 9201
#     to_port = 9201
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
# }

