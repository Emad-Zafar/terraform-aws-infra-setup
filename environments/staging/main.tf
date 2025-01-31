module "vpc" {
  source       = "../../modules/vpc"
  vpc_name     = "staging-vpc"
  cidr         = "10.1.0.0/16"
  public_subnets = [
    { cidr = "10.1.1.0/24", az = "us-west-2a" },
    { cidr = "10.1.2.0/24", az = "us-west-2b" },
    { cidr = "10.1.3.0/24", az = "us-west-2c" }
  ]
  private_subnets = [
    { cidr = "10.1.4.0/24", az = "us-west-2a" },
    { cidr = "10.1.5.0/24", az = "us-west-2b" },
    { cidr = "10.1.6.0/24", az = "us-west-2c" }
  ]
}
