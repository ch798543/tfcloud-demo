# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
 features {}          
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
