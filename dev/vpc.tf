module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.4.0"    

  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs             = var.vpc_availability_zones
  public_subnets  = var.vpc_public_subnets
  private_subnets = var.vpc_private_subnets  

  enable_nat_gateway = var.vpc_enable_nat_gateway 
  single_nat_gateway = var.vpc_single_nat_gateway

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Env = "dev"
  }

  public_subnet_tags = {
    Type = "public subnets"
  }

  private_subnet_tags = {
    Type = "private subnets"
  }  

  map_public_ip_on_launch = true
}