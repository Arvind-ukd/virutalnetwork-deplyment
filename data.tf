data "azurerm_resource_group" "example" {
  name = "rg-terraform-arvind"
}

output "id" {
  value = data.azurerm_resource_group.example.id
}