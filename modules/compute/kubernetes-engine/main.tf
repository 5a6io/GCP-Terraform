resource "google_container_cluster" "default" {
  name = "app"
  location = var.region
  node_locations = [var.zone]
  initial_node_count = 2
  enable_autopilot = false
  deletion_protection = false
}