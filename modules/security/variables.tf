variable "name_prefix" {
  description = "Préfixe des noms des ressources"
  type        = string
}

variable "vpc_id" {
  description = "Identifiant du VPC"
  type        = string
}

variable "poste_cidr" {
  description = "Adresse IPv4 publique du poste au format /32"
  type        = string
}