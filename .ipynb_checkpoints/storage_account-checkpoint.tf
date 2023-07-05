# Define the provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "Jupyter_Testing" "example" {
  name     = "example-resource-group"
  location = "West Europe"
}

# Create a storage account
resource "azurerm_storage_account" "example" {
  name                     = "jupytertesting460"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment = "Dev"
  }
}
#bhanu