terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.75.0"
    }
  }

  backend "s3" {
    bucket = "terraform-81s"
    key    = "expense-eks"
    region = "us-east-1"
    dynamodb_table = "terraform-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}
