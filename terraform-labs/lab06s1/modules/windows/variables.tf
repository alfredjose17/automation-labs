locals {
  common_tags = {
    Name         = "Terraform-Class"
    Project      = "Learning"
    ContactEmail = "n01619463@humber.ca"
    Environment  = "Lab"
  }
}

variable "windows_admin_username" {
  default = "alfredjose17"
}

variable "windows_admin_password" {
  default = "Password@123"
}

variable "windows_os_disk_storage_account_type" {
  default = "StandardSSD_LRS"
}

variable "windows_os_disk_size" {
  default = 128
}

variable "windows_os_disk_caching" {
  default = "ReadWrite"
}

variable "windows_os_publisher" {
  default = "MicrosoftWindowsServer"
}

variable "windows_os_offer" {
  default = "WindowsServer"
}

variable "windows_os_sku" {
  default = "2016-Datacenter"
}

variable "windows_os_version" {
  default = "latest"
}

variable "windows_avs" {
  default = "linux_avs"
}

variable "windows_name" {
  type = map(string)
  default = {
    "n01619463-w-vm1" = "Standard_B1s"
    "n01619463-w-vm2" = "Standard_B1ms"
  }
}

variable "windows_rg_name" {}

variable "location" {}

variable "subnet_id" {}