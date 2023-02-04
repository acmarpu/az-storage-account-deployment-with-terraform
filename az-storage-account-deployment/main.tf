terraform {
  required_providers {
    azurerm = {
        sosource = "hashicorp/azurerm"
        versioversion = "=2.46.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  
}

terraform {
  backend "azurerm" {
    resource_group_name  = "StorageAccount-ResourceGroup"
    storage_account_name = "abcd1234"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

data "azurerm_client_config" "current" {}