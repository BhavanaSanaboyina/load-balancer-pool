variable "resource_group_name" {
    description = "name of the resource group"
    type        = string
}

variable "location" {
    description = "name of the location"
    type        = string
}

variable "public_ip_name" {
    description = "name of the public_ip"
    type        = string
}

variable "allocation_method" {
    description = "type of allocation method"
    type        = string
}

variable "lb_name" {
    description = "name of load balancer"
    type        = string
}

variable "lb_frontend_name" {
    description = "name of the lb frontend"
    type        = string
}

variable "lb_bap_name"{
    description = "name of the load balancer backend address poool"
    type        = string
}