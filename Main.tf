terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4fb63b9b-e66e-4785-a468-ddef08d32959"
}

# Resource Group Definition
resource "azurerm_resource_group" "rg" {
  location = "${var.location}"
  name = "${var.rgname}"  
  }

