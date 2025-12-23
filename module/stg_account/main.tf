resource "azurerm_storage_account" "stg_name" {
  for_each = var.stg_accounts
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  account_replication_type = each.value.account_replication_type
  access_tier = each.value.access_tier
  account_tier = each.value.account_tier
}