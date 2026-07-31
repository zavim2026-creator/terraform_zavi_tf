
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "ayub-rg"
    storage_account_name = "ayubstorage1"
    container_name       = "ayubcontainer"
    key                  = "vmss.tfstate"
  }


}

provider "azurerm" {
  features {}

}