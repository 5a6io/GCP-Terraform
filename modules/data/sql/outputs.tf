output "instance_connection_name" {
  value = google_sql_database_instance.app_db.connection_name
}

output "private_ip_address" {
  value = google_sql_database_instance.app_db.private_ip_address
}
