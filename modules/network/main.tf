resource "google_compute_network" "vpc_network" {
  name = "lab-vpc-network"
  auto_create_subnetworks = true
  mtu = 1460
}

resource "google_compute_subnetwork" "vpc_subnetwork" {
  name = "lab-vpc-subnetwork"
}