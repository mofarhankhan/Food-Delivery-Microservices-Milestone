
# Allow SSH only from your Windows laptop's public IP
resource "aws_vpc_security_group_ingress_rule" "ssh_from_laptop" {
  security_group_id = aws_security_group.devops.id

  description = "SSH access from trusted laptop IP"
  ip_protocol = "tcp"
  from_port   = 22
  to_port     = 22
  cidr_ipv4   = "122.176.200.191/32"

  tags = {
    Name      = "ssh-from-trusted-laptop"
    ManagedBy = "Terraform"
  }
}

# Allow outbound HTTP for package repositories that use HTTP
resource "aws_vpc_security_group_egress_rule" "http_outbound" {
  security_group_id = aws_security_group.devops.id

  description = "Outbound HTTP for package downloads"
  ip_protocol = "tcp"
  from_port   = 80
  to_port     = 80
  cidr_ipv4   = "0.0.0.0/0"
}

# Allow outbound HTTPS for secure downloads and APIs
resource "aws_vpc_security_group_egress_rule" "https_outbound" {
  security_group_id = aws_security_group.devops.id

  description = "Outbound HTTPS for secure downloads and APIs"
  ip_protocol = "tcp"
  from_port   = 443
  to_port     = 443
  cidr_ipv4   = "0.0.0.0/0"
}
