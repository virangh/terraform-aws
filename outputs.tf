output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.vpc.public_subnet_id
}

output "private_subnet_id" {
  value = module.vpc.private_subnet_id
}

output "nat_public_ip" {
  value = module.vpc.nat_public_ip
}
output "bastion_security_group_id" {
  value = module.security.bastion_security_group_id
}

output "private_security_group_id" {
  value = module.security.private_security_group_id
}
output "bastion_public_ip" {
  value = module.ec2.bastion_public_ip
}

output "bastion_private_ip" {
  value = module.ec2.bastion_private_ip
}

output "private_instance_private_ip" {
  value = module.ec2.private_instance_private_ip
}