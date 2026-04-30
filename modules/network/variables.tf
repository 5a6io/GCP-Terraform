variable "network_name" {
  type        = string
  description = "VPC network name"
  default     = "app-vpc"
}

variable "subnet_name" {
  type        = string
  description = "Subnet name"
  default     = "app-subnet"
}

variable "region" {
  type        = string
  description = "Subnet region"
}

variable "subnet_cidr" {
  type        = string
  description = "Subnet CIDR"
  default     = "10.10.0.0/16"
}
