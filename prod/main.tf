variable "rg_input" {}

module "rgs" {
  source = "../../module/azurerm_rg"
  rgs    = var.rg_input
}

module "vnets" {
source = "../../module/azurerm_vnet"
vnet_name = "vnet1"
resource_group_name = "rg-devops-prod"
location = "westeurope"
}