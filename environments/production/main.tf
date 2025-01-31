module "vpc" {
  source       = "../../modules/vpc"
  vpc_name     = "prod-vpc"
  cidr         = "10.2.0.0/16"
  public_subnets = [
    { cidr = "10.2.1.0/24", az = "us-west-2a" },
    { cidr = "10.2.2.0/24", az = "us-west-2b" },
    { cidr = "10.2.3.0/24", az = "us-west-2c" }
  ]
  private_subnets = [
    { cidr = "10.2.4.0/24", az = "us-west-2a" },
    { cidr = "10.2.5.0/24", az = "us-west-2b" },
    { cidr = "10.2.6.0/24", az = "us-west-2c" }
  ]
}
