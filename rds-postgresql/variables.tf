variable "name" { type = string }

variable "subnet_ids" { type = list(string) }
variable "security_group_ids" { type = list(string) }

variable "db_name" { type = string }
variable "master_username" { type = string }
variable "engine_version" { type = string }

variable "instance_class" { type = string }

variable "allocated_storage" { type = number }
variable "max_allocated_storage" { type = number }
variable "storage_type" { 
  type = string
  default = "gp3"
}

variable "multi_az" { type = bool }

variable "parameter_group_family" {
  type    = string
  default = "postgres16"
}

variable "parameters" {
  type = list(object({
    name         = string
    value        = string
    apply_method = optional(string)
  }))
  default = []
}

variable "backup_retention_days" { type = number }
variable "backup_window" { type = string }
variable "maintenance_window" { type = string }

variable "deletion_protection" { type = bool }
variable "apply_immediately" { 
  type = bool
  default = true
}

variable "cloudwatch_logs_exports" {
  type    = list(string)
  default = ["postgresql", "upgrade"]
}


variable "performance_insights_enabled" {
  type    = bool
  default = true
}

variable "pi_retention_days" {
  type    = number
  default = 7
}

variable "enhanced_monitoring_interval" {
  type    = number
  default = 0
}

variable "enhanced_monitoring_role_arn" {
  type    = string
  default = null
}

variable "auto_minor_version_upgrade" {
  type    = bool
  default = true
}

variable "storage_kms_key_id" {
  type    = string
  default = null
}

variable "secrets_kms_key_id" {
  type    = string
  default = null
}

variable "pi_kms_key_id" {
  type    = string
  default = null
}

variable "tags" {
  type    = map(string)
  default = {}
}
