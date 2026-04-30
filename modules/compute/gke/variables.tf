variable "cluster_name" {
  type        = string
  description = "GKE cluster name"
  default     = "app-gke"
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "network" {
  type = string
}

variable "subnetwork" {
  type = string
}

variable "node_pools" {
  description = "Node pools to create in the cluster"
  type = list(object({
    name         = string
    node_count   = optional(number, 1)
    machine_type = optional(string, "e2-medium")
  }))
  default = [
    {
      name         = "default-pool"
      node_count   = 2
      machine_type = "e2-medium"
    }
  ]
}
