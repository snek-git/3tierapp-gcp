variable "host_project_id" {
  description = "The project ID where the network will be created"
  type        = string
}

variable "sql_config" {
  description = "values for the SQL instance attributes"
  type = object({
    name                = string
    database_version    = string
    region              = string
    deletion_protection = bool
  })
}

variable "sql_settings" {
  description = "values for the SQL instance settings attribute"
  type = object({
    tier                  = string
    disk_autoresize       = bool
    disk_autoresize_limit = number
    disk_size             = number
    disk_type             = string
  })
}

variable "sql_ip_config" {
  type = object({
    ipv4_enabled       = bool
    private_network    = string
    require_ssl        = bool
    # allocated_ip_range = string

  })
}

variable "sql_users" {
  type = list(object({
    name     = string
    password = string
  }))
}