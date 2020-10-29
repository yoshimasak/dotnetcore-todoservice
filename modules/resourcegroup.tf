resource "azurerm_resource_group" "rg" {
  name     = "appservice-${var.environment}"
  location = var.location
}