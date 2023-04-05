resource "azurerm_resource_group" "my_RG" {
    name     = var.resource_group_name
    location = var.location
}

resource "azurerm_public_ip" "exmp_public_ip" {
    name = var.public_ip_name
    resource_group_name = var.resource_group_name
    location            = var.location
    allocation_method   = var.allocation_method
}

resource "azurerm_lb" "loadbal" {
    name                = var.lb_name
    resource_group_name = var.resource_group_name
    location            = var.location

    frontend_ip_configuration {
      name = var.lb_frontend_name
      public_ip_address_id = azurerm_public_ip.exmp_public_ip.id
    }
}

resource "azurerm_lb_backend_address_pool" "exmp_bap" {
    name            = var.lb_bap_name
    loadbalancer_id = azurerm_lb.loadbal.id
}