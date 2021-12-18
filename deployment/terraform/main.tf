provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "nadiaaraujo-bucket"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }
}