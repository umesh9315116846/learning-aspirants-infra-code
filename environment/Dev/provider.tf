terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
    }
    backend "azurerm" {
      resource_group_name  = "test_rg_0001"
      storage_account_name = "testrg0001storageaccount"
      container_name       = "backendcontainer"
      key                  = "dev.terraform.tfstate"
    
    }
}

provider "azurerm" {
  features {}
  subscription_id = "b85b825e-360f-475e-a28b-227b74b5f4f8"
}