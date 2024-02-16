terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01619463RG"
    storage_account_name = "tfstaten01619463sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    access_key           = "uVmjDbaseo+ZP4b7tE3Ga7MH4ffy7r8XGLe2S3tlNH5DFGIVxJ04cGoc7RFzYV2odbihNYyWSyKK+AStVMbH2A=="
  }
}