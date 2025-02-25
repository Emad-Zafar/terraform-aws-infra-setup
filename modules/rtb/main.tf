# Public Route Table (1 for all Public Subnets)
resource "aws_route_table" "public" {
  vpc_id = var.vpc_id

  tags = {
    Name = "public-rtb"
  }
}

# Route for Public Subnets (Default route to IGW)
resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.igw_id
}

# Associating ALL Public Subnets with Public Route Table
resource "aws_route_table_association" "public" {
  count = length(var.public_subnet_ids)

  subnet_id      = var.public_subnet_ids[count.index]
  route_table_id = aws_route_table.public.id
}

# Private Route Tables (Each Private Subnet Gets Its Own RTB)
resource "aws_route_table" "private" {
  count = length(var.private_subnet_ids)

  vpc_id = var.vpc_id

  tags = {
    Name = "private-rtb-${count.index + 1}"
  }
}

# Associating Each Private Subnet with Its Own Route Table
resource "aws_route_table_association" "private" {
  count = length(var.private_subnet_ids)

  subnet_id      = var.private_subnet_ids[count.index]
  route_table_id = aws_route_table.private[count.index].id
}

