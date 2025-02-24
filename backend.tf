terraform {
  backend "s3" {
    bucket         = "emad-terraform-assignment-2-s3-bucket"  
    key            = "terraform/state.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-locking"
    encrypt        = true
  }
}