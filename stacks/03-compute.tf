module "gke" {
  source     = "../modules/compute/gke"
  region     = var.region
  zone       = var.zone
  network    = module.network.network_name
  subnetwork = module.network.subnet_name

  node_pools = [
    {
      name         = "pod-pool-a"
      node_count   = 1
      machine_type = "e2-medium"
    },
    {
      name         = "pod-pool-b"
      node_count   = 1
      machine_type = "e2-medium"
    }
  ]
}
