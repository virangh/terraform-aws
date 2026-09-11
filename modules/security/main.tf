resource "aws_security_group" "bastion" {
  name        = "${var.name_prefix}-sg-bastion"
  description = "Acces SSH au bastion"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.name_prefix}-sg-bastion"
  }
}

resource "aws_security_group" "private" {
  name        = "${var.name_prefix}-sg-prive"
  description = "Acces SSH a l instance privee"
  vpc_id      = var.vpc_id

  tags = {
    Name = "${var.name_prefix}-sg-prive"
  }
}

resource "aws_vpc_security_group_ingress_rule" "bastion_ssh" {
  security_group_id = aws_security_group.bastion.id
  description       = "SSH depuis le poste Windows"

  cidr_ipv4   = var.poste_cidr
  ip_protocol = "tcp"
  from_port   = 22
  to_port     = 22
}

resource "aws_vpc_security_group_ingress_rule" "private_ssh" {
  security_group_id            = aws_security_group.private.id
  referenced_security_group_id = aws_security_group.bastion.id
  description                  = "SSH depuis le groupe du bastion"

  ip_protocol = "tcp"
  from_port   = 22
  to_port     = 22
}

resource "aws_vpc_security_group_egress_rule" "bastion_outbound" {
  security_group_id = aws_security_group.bastion.id
  description       = "Tout le trafic IPv4 sortant"

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}

resource "aws_vpc_security_group_egress_rule" "private_outbound" {
  security_group_id = aws_security_group.private.id
  description       = "Tout le trafic IPv4 sortant"

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}