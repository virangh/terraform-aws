module "vpc" {
  source = "./modules/vpc"

  name_prefix         = "tp-05"
  vpc_cidr            = "10.0.0.0/16"
  public_subnet_cidr  = "10.0.1.0/24"
  private_subnet_cidr = "10.0.11.0/24"
  availability_zone   = "eu-west-3a"
}
module "security" {
  source = "./modules/security"

  name_prefix = "tp-05"
  vpc_id      = module.vpc.vpc_id
  poste_cidr  = "5.39.6.57/32"
}
module "ec2" {
  source = "./modules/ec2"

  name_prefix = "tp-05"

  public_subnet_id  = module.vpc.public_subnet_id
  private_subnet_id = module.vpc.private_subnet_id

  bastion_security_group_id = module.security.bastion_security_group_id
  private_security_group_id = module.security.private_security_group_id

  public_key_path = "C:/Users/dev/.ssh/tp-05-cle.pub"
}