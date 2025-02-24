# Output VPC ID
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

# Output Public Subnet IDs
output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

# Output Private Subnet IDs
output "private_subnet_ids" {
  description = "List of private subnet IDs"
  value       = aws_subnet.private[*].id
}
