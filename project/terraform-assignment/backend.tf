terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateN01619463RG"
    storage_account_name = "tfstaten01619463sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    access_key           = ""
  }
}