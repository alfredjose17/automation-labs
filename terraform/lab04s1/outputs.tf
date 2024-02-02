output "vm_hostname" {
  value = azurerm_linux_virtual_machine.linux-vm[*].name
}

output "vm_FQDN" {
  value = azurerm_public_ip.linux-pip[*].fqdn
}

output "private_ip_address" {
  value = azurerm_network_interface.linux-nic[*].private_ip_address
}

output "public_ip_address" {
  value = azurerm_linux_virtual_machine.linux-vm[*].public_ip_address
}

output "virtual_network_name" {
  value = azurerm_virtual_network.network-vnet.name
}

output "address_space" {
  value = azurerm_virtual_network.network-vnet.address_space
}

output "subnet1_name" {
  value = azurerm_subnet.network-subnet1.name
}

output "subnet1_address" {
  value = azurerm_subnet.network-subnet1.address_prefixes
}

output "subnet2_name" {
  value = azurerm_subnet.network-subnet2.name
}

output "subnet2_address" {
  value = azurerm_subnet.network-subnet2.address_prefixes
}

output "linux_availability_set" {
  value = azurerm_availability_set.linux_avs.name
}