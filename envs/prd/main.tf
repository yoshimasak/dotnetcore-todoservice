provider "azurerm" {
  version = "~>2.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tools"
    storage_account_name = "ykataokashare"
    container_name       = "tfstate"
    key                  = "todoservice.prd.tfstate"
  }
}

module "common" {
  source = "../../modules"

  environment = "prd"
  location    = "japaneast"
}