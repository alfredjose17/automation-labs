variable "location" {}

variable "network_rg_name" {}

variable "log_analytics_workspace_name" {
  default = "N01619463-log-analytics-workspace"
}

variable "recovery_services_vault_name" {
  default = "N01619463-recovery-service-vault"
}

variable "storage_account_name" {
  default = "n01619463sa"
}

variable "common_tags" {}