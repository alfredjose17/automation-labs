resource "azurerm_network_interface" "linux-nic" {
  count               = var.nb_count
  name                = "${var.vm_name}-nic${count.index + 1}"
  location            = var.location
  resource_group_name = var.linux_rg_name
  tags                = local.common_tags

  ip_configuration {
    name                          = "${var.vm_name}-ipconfig${count.index + 1}"
    subnet_id                     = var.subnet_id
    public_ip_address_id          = element(azurerm_public_ip.linux-pip[*].id, count.index + 1)
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_public_ip" "linux-pip" {
  count               = var.nb_count
  name                = "${var.vm_name}-pip${count.index + 1}"
  resource_group_name = var.linux_rg_name
  location            = var.location
  allocation_method   = "Dynamic"
  domain_name_label   = "${var.vm_name}${count.index + 1}"
  tags                = local.common_tags
}

resource "azurerm_linux_virtual_machine" "linux-vm" {
  count               = var.nb_count
  name                = "${var.vm_name}${count.index + 1}"
  resource_group_name = var.linux_rg_name
  location            = var.location
  size                = var.vm_size
  admin_username      = var.admin_username
  tags                = local.common_tags

  network_interface_ids = [
    element(azurerm_network_interface.linux-nic[*].id, count.index + 1),
  ]

  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key_path)
  }

  os_disk {
    name                 = "${var.vm_name}-os-disk${count.index + 1}"
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_storage_account_type
    disk_size_gb         = var.os_disk_size
  }

  source_image_reference {
    publisher = var.os_publisher
    offer     = var.os_offer
    sku       = var.os_sku
    version   = var.os_version
  }
}

resource "azurerm_availability_set" "linux_avs" {
  name                         = var.linux_avs
  location                     = var.location
  resource_group_name          = var.linux_rg_name
  platform_update_domain_count = 5
  platform_fault_domain_count  = 2
}