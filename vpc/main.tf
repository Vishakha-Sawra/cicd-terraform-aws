# Create a VPC
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr_block 
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    Name = "myvpc"
  }
}

# Create a public subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block              = var.public_subnet_cidr_block
  map_public_ip_on_launch = true
  availability_zone       = var.availability_zone

  tags = {
    Name = "public_subnet"
  }
}

# Security Group
resource "aws_security_group" "public_sg" {
  vpc_id      = aws_vpc.myvpc.id
  name        = "public_sg"
  description = "Public Security Group"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.security_group_ingress_cidr
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.security_group_egress_cidr
  }
}
