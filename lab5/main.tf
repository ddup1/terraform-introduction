provider "aws" {
  region = "eu-west-1"
  alias  = "eu"
}
provider "aws" {
  region = "us-east-1"
  alias  = "us"
}

resource "aws_bucket" "eu" {
  name     = "bucket-eu"
  provider = aws.eu
}

resource "aws_bucket" "us" {
  name     = "bucket-us"
  provider = aws.us
}

module "foo" {
  provider = {
    aws = aws.us
  }
}
