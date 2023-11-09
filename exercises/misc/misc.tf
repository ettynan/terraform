resource "aws_iam_user" "user" {
  name  = "iamuser.${count.index}"
  count = 3
  path  = "/system/"
}

output "arns" {
  value = aws_iam_user.user[*].arn
}