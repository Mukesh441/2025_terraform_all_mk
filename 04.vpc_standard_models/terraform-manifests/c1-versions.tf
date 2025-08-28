# Terraform Settings Block
terraform {
  backend "s3" {
    bucket = "mk-terraform-state-cicd"   # Your bucket name (lowercase)
    key    = "dev/terraform.tfstate" # State file path (e.g., "terraform.tfstate" or in folder)
    region = "us-east-1"  
    dynamodb_table = "terraform-eks-state-locks"                # Your bucket region
    # use_lockfile = true  # For state locking with DynamoDB (optional but recommended)
    encrypt = true                        # Enable encryption of the state file
  }
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
  # profile = var.profile    //"default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = var.aws_region //"ap-south-1"
}