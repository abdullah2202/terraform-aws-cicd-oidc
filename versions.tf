# versions.tf
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "abdullah2202-cicd-terraform-state-bucket" # Replace with a globally unique name for your state bucket
    key            = "terraform.tfstate"
    region         = "us-east-1" # Must be the same region as your resources or where you want to store state
    encrypt        = true
    dynamodb_table = "abdullah2202-cicd-terraform-state-lock-table" # Replace with a unique name for your DynamoDB lock table
  }
}