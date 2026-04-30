resource "google_sql_database_instance" "app_db" {
  name             = var.instance_name
  region           = var.region
  database_version = "POSTGRES_15"
  root_password    = var.root_password

  settings {
    tier = "db-custom-2-7680"

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.private_network
    }

    password_validation_policy {
      min_length                  = 8
      reuse_interval              = 2
      complexity                  = "COMPLEXITY_DEFAULT"
      disallow_username_substring = true
      password_change_interval    = "2592000s"
      enable_password_policy      = true
    }
  }

  deletion_protection = false
}
