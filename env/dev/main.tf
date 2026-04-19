module "vpc" {
  source = "../../modules/vpc"
  cidr   = "10.0.0.0/16"
}

module "security" {
  source = "../../modules/security"
  vpc_id = module.vpc.vpc_id
}


module "alb" {
  source  = "../../modules/alb"
  subnets = module.vpc.public_subnets
  sg_id   = module.security.sg_id
  vpc_id  = module.vpc.vpc_id
}

module "compute" {
  source  = "../../modules/compute"
  sg_id   = module.security.sg_id
  subnets = module.vpc.public_subnets
  ami     = "ami-0c55b159cbfafe1f0"

  tg_arn  = module.alb.tg_arn
}
