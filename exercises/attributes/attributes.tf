provider "aws" {
    region = "us-west-2"
    access_key = "AKIAVFWC2CST5L5XJKOD"
    secret_key = "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"
}

resource "aws_eip" "mylb" {
    domain = "vpc"
}

output "eip" {
    value = aws_eip.mylb.public_ip
}

resource "aws_s3_bucket" "mys3" {
    bucket = "bucket-s3-attributes"
}

output "mys3bucket" {
    value = aws_s3_bucket.mys3.bucket_domain_name
}