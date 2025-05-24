# main.tf
provider "aws" {
  region = "us-east-1" # Or your preferred AWS region
}

resource "aws_s3_bucket" "example_bucket" {
  bucket = "abdullah2202-cicd-terraform-bucket" # Replace with a globally unique bucket name
  acl    = "private"

  tags = {
    Environment = "Dev"
    Project     = "TerraformCI-CD"
  }
}

output "s3_bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.example_bucket.id
}