locals {
  cohort_name          = format("ce%02d Project Users", var.cohort_number)
  storage_account_name = format("sa%sce%02d%s%02d%s%03d", var.env, var.cohort_number, var.pod, var.user_number, var.project, var.instance)
  tags = tomap({
    "env"     = var.env,
    "cohort"  = format("ce%02d", var.cohort_number),
    "pod"     = var.pod,
    "user"    = format("%s%02d", var.pod, var.user_number),
    "project" = var.project
  })
}

data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

data "azuread_group" "my_cohort" {
  display_name = local.cohort_name
}
resource "azurerm_storage_account" "example" {
  name                     = local.storage_account_name
  resource_group_name      = data.azurerm_resource_group.example.name
  location                 = data.azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  static_website {
    index_document     = "index.html"
    error_404_document = "404.html"
  }

  tags = local.tags
}

resource "azurerm_role_assignment" "blob_data_contributor" {
  count                = var.user_write_access == true ? 1 : 0 # how many times resource will be applied
  scope                = azurerm_storage_account.example.id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azuread_group.my_cohort.object_id
}

resource "azurerm_role_assignment" "key_operator_service_role" {
  count                = var.user_write_access == true ? 1 : 0
  scope                = azurerm_storage_account.example.id
  role_definition_name = "Storage Account Key Operator Service Role"
  principal_id         = data.azuread_group.my_cohort.object_id
}