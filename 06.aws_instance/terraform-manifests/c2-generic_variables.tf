variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

# variable "profile" {
#   description = "The AWS profile to use"
#   type        = string
#   default     = "default"
# }

# Environment Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type        = string
  default     = "dev"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type        = string
  default     = "SAP"
}

/*variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0861f4e788f5069dd" # Amazon Linux in us-east-1, update as per your region  
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t3.micro"
  
}

variable "region" {
  description = "The AWS region to deploy the resources"
  type        = string
  default     = "us-east-1"
}

variable "profile" {
  description = "The AWS profile to use"
  type        = string
  default     = "default"
}

variable "instance_keypair" {
  description = "The key pair to use for the instance"
  type        = string
  default     = "us_virginia_key"
}


variable "instance_type_list" {
  description = "List of instance types to use"
  type        = list(string)
  default     = ["t3.micro", "t3.small", "t3.medium"]
}

variable "instance_type_map" {
  description = "Map of instance types to their corresponding AMI IDs"
  type        = map(string)
  default     = {
    "stage" = "t3.micro" // = "ami-0861f4e788f5069dd"
    "dev" = "t3.small" //= "ami-0861f4e788f5069dd"
    "prod" = "t3.medium" //= "ami-0861f4e788f5069dd"
  }
}
*/