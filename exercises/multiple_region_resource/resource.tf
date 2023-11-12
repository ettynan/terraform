resource "aws_eip" "res1" {
  domain = "vpc"
  provider = aws.west
}

resource "aws_eip" "res2" {
  domain = "vpc"
  provider = aws.ohio
}