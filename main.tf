provider "google" {
  credentials = file("keys/google-production")
  project = var.project_id
  region  = var.region
}

resource "google_sql_database_instance" "postgres_instance" {
  name             = var.instance_name
  database_version = var.postgres_version
  region           = var.region

  settings {
    tier           = var.tier
    backup_configuration {
      enabled = true
    }
    ip_configuration {
      ipv4_enabled    = var.ipv4_enabled
      private_network = var.private_network
    }
  }
}

resource "google_sql_database" "default" {
  name     = "default"
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "postgres_user" {
  name     = var.db_user
  instance = google_sql_database_instance.postgres_instance.name
  password = var.db_password
}
