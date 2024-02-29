output "network_rg" {
  value = module.resource_groups.network_rg
}

output "linux_rg" {
  value = module.resource_groups.linux_rg
}

output "windows_rg" {
  value = module.resource_groups.windows_rg
}

output "location" {
  value = module.resource_groups.location
}

output "virtual_network_name" {
  value = module.networks.virtual_network_name
}

output "address_space" {
  value = module.networks.address_space
}

output "subnet1_name" {
  value = module.networks.subnet1_name
}

output "subnet1_address" {
  value = module.networks.subnet1_address
}

output "subnet2_name" {
  value = module.networks.subnet2_name
}

output "subnet2_address" {
  value = module.networks.subnet2_address
}

output "network_nsg1_name" {
  value = module.networks.network_nsg1_name
}

output "network_nsg2_name" {
  value = module.networks.network_nsg2_name
}

output "linux_hostname" {
  value = module.linux.linux_hostname
}

output "linux_FQDN" {
  value = module.linux.linux_FQDN
}

output "linux_private_ip_address" {
  value = module.linux.linux_private_ip_address
}

output "linux_public_ip_address" {
  value = module.linux.linux_public_ip_address
}

output "linux_availability_set" {
  value = module.linux.linux_availability_set
}

output "windows_availability_set" {
  value = module.windows.windows_availability_set
}

output "windows_hostnames" {
  value = module.windows.windows_hostnames
}

output "windows_FQDN" {
  value = module.windows.windows_FQDN
}

output "windows_private_ip_address" {
  value = module.windows.windows_private_ip_address
}

output "windows_public_ip_address" {
  value = module.windows.windows_public_ip_address
}