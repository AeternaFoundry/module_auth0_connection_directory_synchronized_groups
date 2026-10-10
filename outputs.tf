output "connection_directory_synchronized_groups_id" {
  description = "Map of id values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups except keys with no id are omitted"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "connection_directory_synchronized_groups_connection_id" {
  description = "Map of connection_id values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups except keys with no connection_id are omitted"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.connection_id if v.connection_id != null && length(v.connection_id) > 0 }
}
output "connection_directory_synchronized_groups_group_ids" {
  description = "Map of group_ids values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups except keys with no group_ids are omitted"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.group_ids if v.group_ids != null && length(v.group_ids) > 0 }
}
output "connection_directory_synchronized_groups_groups" {
  description = "Map of groups values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups except keys with no groups are omitted"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.groups if v.groups != null && length(v.groups) > 0 }
}

