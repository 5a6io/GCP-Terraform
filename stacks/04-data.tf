module "sql" {
  source          = "../modules/data/sql"
  region          = var.region
  root_password   = var.root_password
  private_network = module.network.network_self_link
}
