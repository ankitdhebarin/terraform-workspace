resource "aws_eip" "eip_bastion_host" {
  instance = module.ec2_instance.id
  domain   = "vpc"
}