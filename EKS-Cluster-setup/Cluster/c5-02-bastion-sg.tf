module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name                = "ssh security group"
  description         = "Security group for SSH inbound from Public"
  vpc_id              = module.vpc.vpc_id

  # Ingress Rules
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # Egress Rules
  egress_rules       = ["all-all"]

  tags = local.common-tags

}