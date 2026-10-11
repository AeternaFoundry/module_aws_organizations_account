variable "organizations_accounts" {
  description = <<EOT
Map of organizations_accounts, attributes below
Required:
    - email
    - name
Optional:
    - close_on_deletion
    - create_govcloud
    - iam_user_access_to_billing
    - parent_id
    - role_name
    - tags
    - tags_all
EOT

  type = map(object({
    email                      = string
    name                       = string
    close_on_deletion          = optional(bool)
    create_govcloud            = optional(bool)
    iam_user_access_to_billing = optional(string)
    parent_id                  = optional(string)
    role_name                  = optional(string)
    tags                       = optional(map(string))
    tags_all                   = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.organizations_accounts : (
        v.parent_id == null || (can(regex("^(r-[0-9a-z]{4,32})|(ou-[0-9a-z]{4,32}-[0-9a-z]{8,32})$", v.parent_id)))
      )
    ])
    error_message = "see https://docs.aws.amazon.com/organizations/latest/APIReference/API_MoveAccount.html#organizations-MoveAccount-request-DestinationParentId"
  }
  validation {
    condition = alltrue([
      for k, v in var.organizations_accounts : (
        v.role_name == null || (can(regex("^[\\w+=,.@-]{1,64}$", v.role_name)))
      )
    ])
    error_message = "must consist of uppercase letters, lowercase letters, digits with no spaces, and any of the following characters"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

