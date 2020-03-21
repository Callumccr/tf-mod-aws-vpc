# -----------------------------------------------------------------------------
# Outputs: TF-MOD-AWS-VPC
# -----------------------------------------------------------------------------

output "igw_id" {
  value       = aws_internet_gateway.default.id
  description = "The ID of the Internet Gateway"
}

output "vpc_id" {
  value       = aws_vpc.default.id
  description = "The ID of the VPC"
}

output "cidr_block" {
  value       = aws_vpc.default.cidr_block
  description = "The CIDR block of the VPC"
}

output "security_group_id" {
  value       = aws_security_group.default.id
  description = "The ID of the security group"
}

output "security_group_arn" {
  value       = aws_security_group.default.arn
  description = "The ARN of the security group"
}

output "main_route_table_id" {
  value       = aws_vpc.default.main_route_table_id
  description = "The ID of the main route table associated with this VPC"
}

output "default_network_acl_id" {
  value       = aws_vpc.default.default_network_acl_id
  description = "The ID of the network ACL created by default on VPC creation"
}

output "default_security_group_id" {
  value       = aws_vpc.default.default_security_group_id
  description = "The ID of the security group created by default on VPC creation"
}

output "default_route_table_id" {
  value       = aws_vpc.default.default_route_table_id
  description = "The ID of the route table created by default on VPC creation"
}

output "ipv6_association_id" {
  value       = aws_vpc.default.ipv6_association_id
  description = "The association ID for the IPv6 CIDR block"
}

output "ipv6_cidr_block" {
  value       = aws_vpc.default.ipv6_cidr_block
  description = "The IPv6 CIDR block"
}