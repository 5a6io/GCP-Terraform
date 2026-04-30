variable "instance_name" {
  type    = string
  default = "app-db"
}

variable "region" { type = string }
variable "root_password" { type = string, sensitive = true }

variable "private_network" {
  type        = string
  description = "Self-link of VPC for private IP"
}
