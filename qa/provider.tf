terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
backend "azurerm" {
    resource_group_name  = "rg-storage-account"
    storage_account_name = "stroageaccountforall"                     
    container_name       = "qab"
    key                  = "qab.terraform.tfstate"
}
}

provider "azurerm" {
  features {}
  subscription_id = "c7dfd3e3-4f1b-468f-9a0a-f5745da0b678"
}