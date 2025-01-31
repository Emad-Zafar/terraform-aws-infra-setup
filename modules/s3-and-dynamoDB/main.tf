provider "aws" {
  region = "us-west-2"  
}

# S3 Bucket for Terraform State Storage 
resource "aws_s3_bucket" "terraform_state" {
  bucket = "emad-terraform-assignment-2-s3-bucket"  

  tags = {
    Name = "Terraform State Storage"
  }
}

# Enable Versioning 
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# DynamoDB Table for State Locking
resource "aws_dynamodb_table" "terraform_lock" {
  name         = "terraform-state-locking"
  billing_mode = "PAY_PER_REQUEST" 
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform State Lock"
  }
}