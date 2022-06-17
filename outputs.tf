output "id" {
  value       = data.azurerm_resource_group.example.id
  description = "resource group id"
}

output "storage_account" {
  value       = azurerm_storage_account.example.name
  description = "name of target storage account"
}

output "url" {
  value       = azurerm_storage_account.example.primary_web_endpoint
  description = "fqdn for target storage accounts"
}

output "aad_object_id" {
  value = data.azuread_group.my_cohort.object_id
}