locals {
  common_tags = {
    Name         = "Terraform-Class"
    Project      = "Learning"
    ContactEmail = "n01619463@humber.ca"
    Environment  = "Lab"
  }
}

variable "linux_name" {
  default = "n01619463-u-vm1"
}

variable "vm_size" {
  default = "Standard_B1s"
}

variable "admin_username" {
  default = "alfredjose17"
}

variable "public_key_path" {
  default = "/home/alfredjose17/.ssh/id_rsa.pub"
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

variable "ubuntu_os_publisher" {
  default = "Canonical"
}

variable "ubuntu_os_offer" {
  default = "UbuntuServer"
}

variable "ubuntu_os_sku" {
  default = "19.04"
}

variable "ubuntu_os_version" {
  default = "latest"
}
