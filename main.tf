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