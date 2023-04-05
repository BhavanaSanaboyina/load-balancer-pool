terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
        }
    }
}

provider "azurerm" {
    features {}
}

module "loadbalancer" {
    source = "../load balancer"

    resource_group_name = var.resource_group_name
    location            = var.location
    public_ip_name      = var.public_ip_name
    allocation_method   = var.allocation_method
    lb_name             = var.lb_name
    lb_frontend_name    = var.lb_frontend_name
    lb_bap_name         = var.lb_bap_name
}