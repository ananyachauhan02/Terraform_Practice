provider "aws" {
  region = "us-east-1"
}

provider "azurerm" {
  subscription_id = "your_azure_subscription_id"
  client_id = "your_azure_client_id"
  client_secret = "your_azure_client_secret"
  tenant_id = "your_azure_tenant_id"
}