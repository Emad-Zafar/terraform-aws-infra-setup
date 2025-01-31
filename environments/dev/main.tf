module "vpc" {
  source       = "../../modules/vpc"
  vpc_name     = "dev-vpc"
  cidr         = "10.0.0.0/16"
  public_subnets = [
    { cidr = "10.0.1.0/24", az = "us-west-2a" },
    { cidr = "10.0.2.0/24", az = "us-west-2b" },
    { cidr = "10.0.3.0/24", az = "us-west-2c" }
  ]
  private_subnets = [
    { cidr = "10.0.4.0/24", az = "us-west-2a" },
    { cidr = "10.0.5.0/24", az = "us-west-2b" },
    { cidr = "10.0.6.0/24", az = "us-west-2c" }
  ]
}
