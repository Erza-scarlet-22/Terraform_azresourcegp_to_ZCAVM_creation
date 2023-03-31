terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.46.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "Aratrika_rg"
    storage_account_name = "terraformbackenstorate72"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    access_key = "jfBomgF9448rCLrG4k+hb+tZeT5h5weh2shR8NpLsdTfNq/oyDsCjpi5u1WHrON7sb+2v8hvQQ60+AStx5bD2g=="
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}






