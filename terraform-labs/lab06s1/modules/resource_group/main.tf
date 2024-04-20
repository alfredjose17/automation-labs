resource "azurerm_resource_group" "network-rg" {
  name     = var.network_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "linux-rg" {
  name     = var.linux_resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "windows-rg" {
  name     = var.windows_resource_group_name
  location = var.location
}