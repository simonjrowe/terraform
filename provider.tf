provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  alias = "ireland"
  region = "eu-west-1"
}

resource "aws_s3_bucket" "ireland_bucket" {
  provider = "aws.ireland"
  bucket = ""
}

resource "aws_s3_bucket" "default" {
  bucket = ""
}