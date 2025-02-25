# VPC ID (Passed from VPC Module)
variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

# Internet Gateway ID (For Public Route Table)
variable "igw_id" {
  description = "ID of the Internet Gateway"
  type        = string
}

# Public Subnet IDs (For Route Table Associations)
variable "public_subnet_ids" {
  description = "List of Public Subnet IDs"
  type        = list(string)
}

# Private Subnet IDs (For Private Route Table Associations)
variable "private_subnet_ids" {
  description = "List of Private Subnet IDs"
  type        = list(string)
}

