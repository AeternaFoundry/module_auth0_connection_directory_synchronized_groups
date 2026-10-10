variable "connection_directory_synchronized_groups" {
  description = <<EOT
Map of connection_directory_synchronized_groups, attributes below
Required:
    - connection_id
Optional:
    - group_ids
    - groups (block):
        - direct_members_count (optional)
        - email (optional)
        - id (required)
        - name (optional)
EOT

  type = map(object({
    connection_id = string
    group_ids     = optional(set(string))
    groups = optional(list(object({
      direct_members_count = optional(number)
      email                = optional(string)
      id                   = string
      name                 = optional(string)
    })))
  }))
}

