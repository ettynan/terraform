# provider "aws" {}

resource "aws_iam_user" "res1" {
    name = "iamuser.${count.index}"
    count = 2
    path = "/system/"
}

output "arns" {
    value = aws_iam_user.res1[*].name
    #value = aws_iam_user.res1[*].arn
}