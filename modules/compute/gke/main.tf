resource "google_container_cluster" "default" {
  name                     = var.cluster_name
  location                 = var.region
  node_locations           = [var.zone]
  remove_default_node_pool = true
  initial_node_count       = 1
  network                  = var.network
  subnetwork               = var.subnetwork
  deletion_protection      = false
}

resource "google_container_node_pool" "this" {
  for_each = { for pool in var.node_pools : pool.name => pool }

  name       = each.value.name
  location   = var.region
  cluster    = google_container_cluster.default.name
  node_count = each.value.node_count

  node_config {
    machine_type = each.value.machine_type
    oauth_scopes = ["https://www.googleapis.com/auth/cloud-platform"]
  }
}
