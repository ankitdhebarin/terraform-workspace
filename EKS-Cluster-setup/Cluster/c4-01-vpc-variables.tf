# VPC Input variables

# VPC Name
variable "vpc_name" {
  description = "VPC name"
  type = string
  default = "myvpc"
}

# VPC CIDR
variable "vpc_cidr" {
  description = "VPC CIDR"
  type = string
  default = "10.0.0.0/16"
}

# VPC Availability Zones
# variable "vpc_az" {
#   description = "VPC Availabilty zones"
#   type = list(string)
#   default = ["us-east-1a", "us-east-1b"]
# }

variable "vpc_private_subnets" {
  description = "VPC Private Subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_database_subnets" {
    description = "VPC Database subnets"
    type = list(string)
    default = ["10.0.151.0/24", "10.0.152.0/24"]  
}

variable "vpc_database_subnet_group" {
    description = "Database Subnet Group"
    type = bool
    default = true
}

variable "vpc_database_subnet_route_table" {
    description = "Database Route Table"
    type = bool
    default = true
}

variable "vpc_enable_nat_gateway" {
    description = "Enable NAT Gateway"
    type = bool
    default = true
}

variable "vpc_single_nat_gateway" {
    description = "Single NAT Gateway across all private vpcs"
    type = bool
    default = true
}




