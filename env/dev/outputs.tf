output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "security_group_id" {
  value = module.security.sg_id
}

output "alb_dns" {
  value = module.alb.alb_dns
}

output "target_group_arn" {
  value = module.alb.tg_arn
}

output "autoscaling_group_name" {
  value = module.compute.asg_name
}
