terraform {
  
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.13.1"
    }
  }

  backend "s3" {
    bucket = "momo-project-s3-tf-state"
    key = "terraform.tfstate"
    region = "ap-northeast-2"
    dynamodb_table = "momo-project-ddb-lock-table"
    encrypt = "true"
  }
}

provider "aws" {
  region = var.aws_region
}