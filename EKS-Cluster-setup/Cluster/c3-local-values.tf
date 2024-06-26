# Local values to be reused
locals {
  owners = var.business_division
  environment = var.environment
  name = "${var.business_division}-${var.environment}"
  # name = ${local.owners} - ${local.environment}

  # Add additional local value
  eks_cluster_name = "${local.name}-${var.cluster_name}"  

  common-tags = {
    owners = local.owners
    environment = local.environment
  }
}