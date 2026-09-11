variable "name_prefix" {
  description = "Prefixe utilise pour nommer les ressources"
  type        = string
}

variable "public_subnet_id" {
  description = "ID du sous-reseau public"
  type        = string
}

variable "private_subnet_id" {
  description = "ID du sous-reseau prive"
  type        = string
}

variable "bastion_security_group_id" {
  description = "ID du groupe de securite du bastion"
  type        = string
}

variable "private_security_group_id" {
  description = "ID du groupe de securite de l instance privee"
  type        = string
}

variable "public_key_path" {
  description = "Chemin vers la cle publique SSH"
  type        = string
}