variable "resource_group_name" {
  default = "network-rg"
}

variable "location" {
  default = "Canada Central"
}

variable "virtual_network_name" {
  default = "network-vnet"
}

variable "virtual_network_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet1_name" {
  default = "network-subnet1"
}

variable "subnet2_name" {
  default = "network-subnet2"
}

variable "subnet1_address" {
  default = ["10.0.0.0/24"]
}

variable "subnet2_address" {
  default = ["10.0.1.0/24"]
}

variable "network_security_group1_name" {
  default = "network-nsg1"
}

variable "network_security_group2_name" {
  default = "network-nsg2"
}