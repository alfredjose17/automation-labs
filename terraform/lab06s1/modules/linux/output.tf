output "linux_hostname" {
  value = azurerm_linux_virtual_machine.linux-vm[*].name
}

output "linux_FQDN" {
  value = azurerm_public_ip.linux-pip[*].fqdn
}

output "linux_private_ip_address" {
  value = azurerm_network_interface.linux-nic[*].private_ip_address
}

output "linux_public_ip_address" {
  value = azurerm_linux_virtual_machine.linux-vm[*].public_ip_address
}

output "linux_availability_set" {
  value = azurerm_availability_set.linux_avs.name
}