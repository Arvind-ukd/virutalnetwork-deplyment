
resource "azurerm_virtual_network" "example" {
  name                = "vnet-ci-terraform-code"
  location            = data.azurerm_resource_group.example.name
  resource_group_name = data.azurerm_resource_group.example.id
  address_space       = ["172.0.0.0/16"]
  

  subnet {
    name           = "appsubnet-terraform"
    address_prefix = "172.0.1.0/24"
  }

  subnet {
    name           = "dbsubnet-terraform"
    address_prefix = "172.0.2.0/24"
  }

  tags = {
    environment = "Production"
  }
}