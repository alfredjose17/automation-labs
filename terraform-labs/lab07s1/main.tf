module "resource_groups" {
  source = "./modules/resource_group"

  network_resource_group_name = "network-rg"
  linux_resource_group_name   = "linux-rg"
  windows_resource_group_name = "windows-rg"
  location                    = "Canada Central"
}

module "networks" {
  source = "./modules/network"

  network_resource_group_name   = module.resource_groups.network_rg
  location                      = module.resource_groups.location
  virtual_network_name          = "network-vnet"
  virtual_network_address_space = ["10.0.0.0/16"]
  subnet1_name                  = "network-subnet1"
  subnet2_name                  = "network-subnet2"
  subnet1_address               = ["10.0.0.0/24"]
  subnet2_address               = ["10.0.1.0/24"]
  network_security_group1_name  = "network-nsg1"
  network_security_group2_name  = "network-nsg2"
}

module "linux" {
  source = "./modules/linux"

  vm_name                      = "n01619463-c-vm"
  vm_size                      = "Standard_B1s"
  admin_username               = "linuxadmin"
  public_key_path              = "/home/alfredjose17/.ssh/id_rsa.pub"
  private_key_path             = "/home/alfredjose17/.ssh/id_rsa"
  os_disk_storage_account_type = "Premium_LRS"
  os_disk_size                 = 32
  os_disk_caching              = "ReadWrite"
  os_publisher                 = "OpenLogic"
  os_offer                     = "CentOS"
  os_sku                       = "8_2"
  os_version                   = "latest"
  linux_avs                    = "linux_avs"
  nb_count                     = 2
  linux_rg_name                = module.resource_groups.linux_rg
  location                     = module.resource_groups.location
  subnet_id                    = module.networks.subnet1_id
}

module "windows" {
  source = "./modules/windows"

  windows_admin_username               = "winadm"
  windows_admin_password               = "Winadm!23"
  windows_os_disk_storage_account_type = "StandardSSD_LRS"
  windows_os_disk_size                 = 128
  windows_os_disk_caching              = "ReadWrite"
  windows_os_publisher                 = "MicrosoftWindowsServer"
  windows_os_offer                     = "WindowsServer"
  windows_os_sku                       = "2019-Datacenter"
  windows_os_version                   = "latest"
  windows_avs                          = "windows_avs"
  windows_name = {
    "n01619463-w-vm1" = "Standard_B1s"
  }
  windows_rg_name = module.resource_groups.windows_rg
  location        = module.resource_groups.location
  subnet_id       = module.networks.subnet2_id
}