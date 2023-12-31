terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 2.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}