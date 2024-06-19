terraform {
  required_version = "~> 1.5"

  # backend "azurerm" {
  #   container_name = "terraform"
  # }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.54"
    }
  }
}
