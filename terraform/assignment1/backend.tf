terraform {
  backend "azurerm" {
    resource_group_name  = "tfstateN01619463RG"
    storage_account_name = "tfstaten01619463sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    access_key           = "Vo5HZw6D2E2TR/afYBO4BFXNHhGB6aE5zX7Mx/MYSWyErnRn02wqckn47CRdanZyb14444tqWMao+ASt3uxZ9g=="
  }
}