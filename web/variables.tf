variable "subnet_id" {
  description = "The ID of the subnet where the instance will be deployed"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group for the instance"
  type        = string
}
