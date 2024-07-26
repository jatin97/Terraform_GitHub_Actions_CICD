provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "jatin-s3bucket-date"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "jatin-25-dblocks"
    encrypt        = true
  }
}
