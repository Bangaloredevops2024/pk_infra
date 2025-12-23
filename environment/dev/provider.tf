terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  #   backend "azurerm" {
  #     resource_group_name  = "rg-tf-backend"
  #     storage_account_name = "tfterraformstate01"
  #     container_name       = "tfstate"
  #     key                  = "dev/terraform.tfstate"
  #   }
}



provider "azurerm" {
  features {}

  subscription_id = "ca2d764d-6af0-4ecc-8eaf-76bd3b666806"

}

