variable "vpc_id" {
  type        = string
  description = "VPC: id"
  nullable    = false
}

variable "vpc_subnet_id" {
  type        = string
  description = "VPC: subnet"
  nullable    = false
}

variable "ec2_key" {
  type        = string
  description = "EC2: public SSH key"
  nullable    = true
  sensitive   = true
}
