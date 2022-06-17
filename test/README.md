## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 2.22.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.9.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_sa_creater"></a> [sa\_creater](#module\_sa\_creater) | ../ | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.target](https://registry.terraform.io/providers/hashicorp/azurerm/3.9.0/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cohort_number"></a> [cohort\_number](#input\_cohort\_number) | is the ce number | `number` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | is the environment sandbox (sbx), development (dev), test (tst) or production (prod) | `string` | n/a | yes |
| <a name="input_instance"></a> [instance](#input\_instance) | the storage account instance number | `number` | `1` | no |
| <a name="input_pod"></a> [pod](#input\_pod) | is the pod of the user | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | is the project | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | target azure resource group | `string` | n/a | yes |
| <a name="input_user_number"></a> [user\_number](#input\_user\_number) | is the users rest number | `number` | n/a | yes |
| <a name="input_user_write_access"></a> [user\_write\_access](#input\_user\_write\_access) | whether user gets Storage Blob Data Owner role | `bool` | `false` | no |

## Outputs

No outputs.
