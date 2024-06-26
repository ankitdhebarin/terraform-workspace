data "aws_availability_zones" "available" {
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${local.name}-${var.vpc_name}"
  cidr = var.vpc_cidr
  azs             = data.aws_availability_zones.available.names
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets

  # Database Subnets
  database_subnets = var.vpc_database_subnets
  create_database_subnet_group = var.vpc_database_subnet_group
  create_database_subnet_route_table = var.vpc_database_subnet_route_table

  # Outbound communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # DNS configuration
  enable_dns_hostnames = true
  enable_dns_support   = true

  # Instances launched into the Public subnet should be assigned a public IP address.
  map_public_ip_on_launch = true

  public_subnet_tags = {
    Type = "public-subnet-tags"
    "kubernetes.io/role/elb" = 1    
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"
  }

  private_subnet_tags = {
    Type = "private-subnets-tags"
    "kubernetes.io/role/internal-elb" = 1    
    "kubernetes.io/cluster/${local.eks_cluster_name}" = "shared"   
  }

  database_subnet_tags = {
    Type = "database-subnets" 
  }

  tags = local.common-tags
  vpc_tags = local.common-tags
}
