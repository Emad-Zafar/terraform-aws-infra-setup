# Public Route Table ID
output "public_route_table_id" {
  description = "Public Route Table ID"
  value       = aws_route_table.public.id
}

# Private Route Table IDs (List)
output "private_route_table_ids" {
  description = "List of Private Route Table IDs"
  value       = aws_route_table.private[*].id
}
