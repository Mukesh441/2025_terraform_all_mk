# Terraform Settings Block
terraform {
  required_version = ">=  1.13"
  required_providers {  
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0" # Optional but recommended in production
    }
  }
}


# Provider Block
provider "aws" {
  profile = var.profile //"default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = var.aws_region //"ap-south-1"
}