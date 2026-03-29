locals {
  common_tags = {
    "ManagedBy"   = "Terraform"
    "Owner"       = "TodoAppTeam"
    "Environment" = "dev"
  }
}

module "rg" {
  source      = "../../module/azurerm_resource_group"
  rg_name     = "kash-rg"
  rg_location = "centralindia"
  tags       = local.common_tags
}

