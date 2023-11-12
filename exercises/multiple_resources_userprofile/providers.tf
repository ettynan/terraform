provider "aws" {
  region = "us-west-2"
  alias = "default"
}

provider "aws" {
  alias = "user2"
  region = "us-east-2"
  profile = "user2"
}