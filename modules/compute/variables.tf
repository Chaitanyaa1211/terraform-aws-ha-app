variable "sg_id" {
  description = "Security group ID"
  type        = string
}

variable "subnets" {
  description = "Subnets for ASG"
  type        = list(string)
}

variable "ami" {
  description = "AMI ID"
  type        = string
}

variable "tg_arn" {
  description = "Target group ARN"
  type        = string
}
