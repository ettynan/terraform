provider "aws" {
  region = "us-west-2"
  alias = "west"
}

provider "aws" {
  alias = "ohio"
  region = "us-east-2"
}