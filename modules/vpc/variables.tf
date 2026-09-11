variable "name_prefix" {
  description = "Préfixe des noms des ressources"
  type        = string
}

variable "vpc_cidr" {
  description = "Plage IPv4 du VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "Plage IPv4 du sous-réseau public"
  type        = string
}

variable "private_subnet_cidr" {
  description = "Plage IPv4 du sous-réseau privé"
  type        = string
}

variable "availability_zone" {
  description = "Zone de disponibilité des sous-réseaux"
  type        = string
}