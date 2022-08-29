terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0.0"
    }
    random = {
        source = "hashicorp/random"
        variable =">=2.0.0" 
        }
    }

  }


provider "azurerm" {
  features {
    
  }
}

resource "random_string" "myrandom" {
  length = 8
  upper = false
  special = false
}

resource "azurerm_resource_group" "myrg" {
  location = "EastUS"
  name = local.rg_name
}