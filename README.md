## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_role_assignment.blob_data_contributor](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.key_operator_service_role](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_storage_account.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azuread_group.my_cohort](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azurerm_resource_group.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cohort_number"></a> [cohort\_number](#input\_cohort\_number) | is the ce number | `number` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | is the environment so dev or test | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | the storage account instance number | `number` | `1` | no |
| <a name="input_pod"></a> [pod](#input\_pod) | is the pod of the user | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | is the project | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | target azure resource group | `string` | n/a | yes |
| <a name="input_user_number"></a> [user\_number](#input\_user\_number) | is the users rest number | `number` | n/a | yes |
| <a name="input_user_write_access"></a> [user\_write\_access](#input\_user\_write\_access) | whether user gets Storage Blob Data Owner role | `bool` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aad_object_id"></a> [aad\_object\_id](#output\_aad\_object\_id) | n/a |
| <a name="output_id"></a> [id](#output\_id) | resource group id |
| <a name="output_storage_account"></a> [storage\_account](#output\_storage\_account) | name of target storage account |
| <a name="output_url"></a> [url](#output\_url) | fqdn for target storage accounts |
