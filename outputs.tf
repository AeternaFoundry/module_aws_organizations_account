output "organizations_accounts_id" {
  description = "Map of id values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_accounts_arn" {
  description = "Map of arn values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "organizations_accounts_close_on_deletion" {
  description = "Map of close_on_deletion values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.close_on_deletion if v.close_on_deletion != null }
}
output "organizations_accounts_create_govcloud" {
  description = "Map of create_govcloud values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.create_govcloud if v.create_govcloud != null }
}
output "organizations_accounts_email" {
  description = "Map of email values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.email if v.email != null && length(v.email) > 0 }
}
output "organizations_accounts_govcloud_id" {
  description = "Map of govcloud_id values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.govcloud_id if v.govcloud_id != null && length(v.govcloud_id) > 0 }
}
output "organizations_accounts_iam_user_access_to_billing" {
  description = "Map of iam_user_access_to_billing values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.iam_user_access_to_billing if v.iam_user_access_to_billing != null && length(v.iam_user_access_to_billing) > 0 }
}
output "organizations_accounts_joined_method" {
  description = "Map of joined_method values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.joined_method if v.joined_method != null && length(v.joined_method) > 0 }
}
output "organizations_accounts_joined_timestamp" {
  description = "Map of joined_timestamp values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.joined_timestamp if v.joined_timestamp != null && length(v.joined_timestamp) > 0 }
}
output "organizations_accounts_name" {
  description = "Map of name values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_accounts_parent_id" {
  description = "Map of parent_id values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.parent_id if v.parent_id != null && length(v.parent_id) > 0 }
}
output "organizations_accounts_role_name" {
  description = "Map of role_name values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.role_name if v.role_name != null && length(v.role_name) > 0 }
}
output "organizations_accounts_state" {
  description = "Map of state values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.state if v.state != null && length(v.state) > 0 }
}
output "organizations_accounts_status" {
  description = "Map of status values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.status if v.status != null && length(v.status) > 0 }
}
output "organizations_accounts_tags" {
  description = "Map of tags values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "organizations_accounts_tags_all" {
  description = "Map of tags_all values across all organizations_accounts, keyed the same as var.organizations_accounts"
  value       = { for k, v in aws_organizations_account.organizations_accounts : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

