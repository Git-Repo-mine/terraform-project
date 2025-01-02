variable "rg_input" {}

module "rgs" {
  source = "../../module/azurerm_rg"
  rgs    = var.rg_input
}