variable "pod" {
  type        = string
  description = "is the pod of the user"
}

variable "cohort_number" {
  type        = number
  description = "is the ce number"
}

variable "user_number" {
  type        = number
  description = "is the users rest number"
}

variable "env" {
  type        = string
  description = "is the environment sandbox (sbx), development (dev), test (tst) or production (prod)"
}

variable "resource_group_name" {
  type        = string
  description = "target azure resource group"
}

variable "project" {
  type        = string
  description = "is the project"
}

variable "user_write_access" {
  type        = bool
  description = "whether user gets Storage Blob Data Owner role"
  default     = false
}

variable "instance" {
  type        = number
  description = "the storage account instance number"
  default     = 1
}