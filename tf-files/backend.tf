terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate01660400RG"
    storage_account_name = "tfstate01660400sa"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
  }
}