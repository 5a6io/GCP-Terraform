module "network" {
  source      = "../modules/network"
  region      = var.region
  network_name = "app-vpc"
  subnet_name  = "app-subnet"
  subnet_cidr  = "10.10.0.0/16"
}
