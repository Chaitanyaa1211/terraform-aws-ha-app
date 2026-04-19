variable "subnets" {
  description = "Subnets for ALB"
  type        = list(string)
}

variable "sg_id" {
  description = "Security group for ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}
