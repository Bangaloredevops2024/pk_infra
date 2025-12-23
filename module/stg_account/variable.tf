# variable "storage_account" {
#     type = map(object({
#       name = string
#       resource_group_name = string
#       location = string
#     }))
  
# }
variable "stg_accounts" {
  description = "Map of storage account configurations"
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_replication_type = string
    access_tier              = string
    account_tier             = string
  }))
}