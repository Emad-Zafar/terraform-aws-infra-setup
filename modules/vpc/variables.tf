variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "cidr" {
  description = "VPC CIDR Block"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnets with CIDR and AZ"
  type = list(object({
    cidr = string
    az   = string
  }))
}

variable "private_subnets" {
  description = "List of private subnets with CIDR and AZ"
  type = list(object({
    cidr = string
    az   = string
  }))
}
