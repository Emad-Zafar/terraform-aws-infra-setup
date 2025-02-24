provider "aws" {
  region = "us-west-2"
}

# Create a single shared VPC
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "shared-vpc"
  }
}

# Create Public Subnets (Shared Across Environments)
resource "aws_subnet" "public_us_west_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true

  tags = { Name = "pub-sub-us-west-2a" }
}

resource "aws_subnet" "public_us_west_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true

  tags = { Name = "pub-sub-us-west-2b" }
}

resource "aws_subnet" "public_us_west_2c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-west-2c"
  map_public_ip_on_launch = true

  tags = { Name = "pub-sub-us-west-2c" }
}

# Create Private Subnets (Shared Across Environments)
resource "aws_subnet" "private_us_west_2a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "us-west-2a"

  tags = { Name = "pri-sub-us-west-2a" }
}

resource "aws_subnet" "private_us_west_2b" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "us-west-2b"

  tags = { Name = "pri-sub-us-west-2b" }
}

resource "aws_subnet" "private_us_west_2c" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.6.0/24"
  availability_zone = "us-west-2c"

  tags = { Name = "pri-sub-us-west-2c" }
}
