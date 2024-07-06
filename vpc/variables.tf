variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
  default     = "us-east-1a"
}

variable "security_group_ingress_cidr" {
  description = "The CIDR block for ingress traffic to the security group"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "security_group_egress_cidr" {
  description = "The CIDR block for egress traffic from the security group"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
