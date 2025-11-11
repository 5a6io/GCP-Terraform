resource "google_sql_database_instance" "app_db" {
  name = "app_db"
  region = var.region
  database_version = "POSTGRES_17"
  root_password = var.root_password
  settings {
    tier = "db-custom-2-7680"
    password_validation_policy {
      min_length = 6
      reuse_interval = 2
      complexity = "COMPLEXITY_DEFAULT"
      disallow_username_substring = true
      password_change_interval = "30s"
      enable_password_policy = true
    }
  }

  deletion_protection = false
}