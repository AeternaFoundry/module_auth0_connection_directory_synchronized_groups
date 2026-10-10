resource "auth0_connection_directory_synchronized_groups" "connection_directory_synchronized_groups" {
  for_each = var.connection_directory_synchronized_groups

  connection_id = each.value.connection_id
  group_ids     = each.value.group_ids

  dynamic "groups" {
    for_each = each.value.groups != null ? each.value.groups : []
    content {
      direct_members_count = groups.value.direct_members_count
      email                = groups.value.email
      id                   = groups.value.id
      name                 = groups.value.name
    }
  }
}

