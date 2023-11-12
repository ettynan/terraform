resource "aws_eip" "res1" {
  domain = "vpc"
  provider = aws.default
}

resource "aws_eip" "res2" {
  domain = "vpc"
  provider = aws.user2
}