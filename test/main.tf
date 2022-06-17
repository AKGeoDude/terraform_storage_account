locals {
  resource_group_name = format("rg-%s-ce%02d-%s-$03d", var.env, var.cohort_number, var.project, var.instance) # "rg-sbx-ce03-seven-001"
}

data "azurerm_resource_group" "target" {
  name = local.resource_group_name
}

module "sa_creater" {
  source              = "../"
  resource_group_name = data.azurerm_resource_group.target.name
  pod                 = var.pod
  cohort_number       = var.cohort_number
  user_number         = var.user_number
  env                 = var.env
  project             = var.project
  user_write_access   = var.env == "sbx" ? true : false
  instance            = var.instance
}