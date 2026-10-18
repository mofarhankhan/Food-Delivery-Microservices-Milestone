output "vpc_id" {
  description = "ID of the existing VPC"
  value       = data.aws_vpc.existing.id
}

output "subnet_id" {
  description = "ID of the existing public subnet"
  value       = data.aws_subnet.existing.id
}

output "devops_security_group_id" {
  description = "ID of the dedicated DevOps security group"
  value       = aws_security_group.devops.id
}