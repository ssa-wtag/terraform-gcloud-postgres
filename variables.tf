variable "project_id" {
  description = "The ID of the GCP project to deploy the Cloud SQL instance."
  type        = string
}

variable "region" {
  description = "The GCP region to deploy the Cloud SQL instance."
  type        = string
  default     = "us-central1"
}

variable "instance_name" {
  description = "The name of the Cloud SQL instance."
  type        = string
}

variable "postgres_version" {
  description = "The PostgreSQL version for the Cloud SQL instance."
  type        = string
  default     = "POSTGRES_16"
}

variable "tier" {
  description = "The machine type (tier) for the Cloud SQL instance."
  type        = string
  default     = "db-f1-micro"
}

variable "ipv4_enabled" {
  description = "Whether the instance should be assigned a public IP address."
  type        = bool
  default     = false
}

variable "private_network" {
  description = "The VPC network name to deploy the Cloud SQL instance in (only for private IP)."
  type        = string
  default     = null
}

variable "db_user" {
  description = "The PostgreSQL user name."
  type        = string
  default     = "postgres"
}

variable "db_password" {
  description = "The password for the PostgreSQL user."
  type        = string
}
