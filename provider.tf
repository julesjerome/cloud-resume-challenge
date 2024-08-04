terraform {
  required_providers {
    aws = {
      version = ">= 5.61.0"
      source = "hashicorp/aws"
    }
  }
}
terraform {
  backend "s3" {
    bucket                  = "juliebucket122010"
    key                     = "my-terraform-config"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}

provider "aws" {
  region = "us-east-1"
}