output "windows_availability_set" {
  value = azurerm_availability_set.windows_avs.name
}

output "windows_hostnames" {
  value = values(azurerm_windows_virtual_machine.windows-vm)[*].name
}

output "windows_FQDN" {
  value = values(azurerm_public_ip.windows-pip)[*].fqdn
}

output "windows_private_ip_address" {
  value = values(azurerm_windows_virtual_machine.windows-vm)[*].private_ip_address
}

output "windows_public_ip_address" {
  value = values(azurerm_windows_virtual_machine.windows-vm)[*].public_ip_address
}