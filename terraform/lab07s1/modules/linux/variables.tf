locals {
  common_tags = {
    Name         = "Terraform-Class"
    Project      = "Learning"
    ContactEmail = "n01619463@humber.ca"
    Environment  = "Lab"
  }
}

variable "vm_name" {
  default = "n01619463-u-vm"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "linuxadmin"
}

variable "public_key_path" {
  default = "/home/alfredjose17/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  default = "/home/alfredjose17/.ssh/id_rsa"
}

variable "os_disk_storage_account_type" {
  default = "Premium_LRS"
}

variable "os_disk_size" {
  default = 32
}

variable "os_disk_caching" {
  default = "ReadWrite"
}

variable "os_publisher" {
  default = "OpenLogic"
}

variable "os_offer" {
  default = "CentOS"
}

variable "os_sku" {
  default = "8_2"
}

variable "os_version" {
  default = "latest"
}

variable "linux_avs" {
  default = "linux_avs"
}

variable "nb_count" {
  default = 2
}

variable "linux_rg_name" {}

variable "location" {}

variable "subnet_id" {}