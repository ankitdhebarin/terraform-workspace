module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.6.1"

  name = "${local.name}-bastionhost"

  instance_type          = var.instance_type
  key_name               = var.instance_key_pair
#  monitoring            = true            We dont need monitoring for now
  vpc_security_group_ids = [ module.public_bastion_sg.security_group_id ]
  subnet_id              = module.vpc.public_subnets[0]
  
  tags = local.common-tags
}