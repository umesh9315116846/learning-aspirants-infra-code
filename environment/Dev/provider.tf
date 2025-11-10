terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.51.0"
    }
    }
    backend "azurerm" {
      resource_group_name  = "rg-dev-001"
      storage_account_name = "backendstorageaccount001"
      container_name       = "dev-container-001"
      key                  = "dev.terraform.tfstate"
    
    }
}

provider "azurerm" {
  features {}
  subscription_id = "b85b825e-360f-475e-a28b-227b74b5f4f8"
}