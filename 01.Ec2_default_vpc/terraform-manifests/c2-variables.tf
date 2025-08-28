variable "ami_id" {
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
  default     = "ap-south-1"
}

variable "profile" {
  description = "The AWS profile to use"
  type        = string
  default     = "default"
}

variable "instance_keypair" {
  description = "The key pair to use for the instance"
  type        = string
  default     = "Mumbai_key"
}
