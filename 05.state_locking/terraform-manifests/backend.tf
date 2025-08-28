terraform {
  backend "s3" {
    bucket = "mk-terraform-state-cicd"   # Your bucket name (lowercase)
    key    = "envs/dev/terraform.tfstate" # State file path (e.g., "terraform.tfstate" or in folder)
    region = "us-east-1"                  # Your bucket region
    dynamodb_table = "terraform-eks-state-locks"  # For state locking with DynamoDB (optional but recommended)
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