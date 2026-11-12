output "connection_directory_synchronized_groups_id" {
  description = "Map of id values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.id }
}
output "connection_directory_synchronized_groups_connection_id" {
  description = "Map of connection_id values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.connection_id }
}
output "connection_directory_synchronized_groups_group_ids" {
  description = "Map of group_ids values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.group_ids }
}
output "connection_directory_synchronized_groups_groups" {
  description = "Map of groups values across all connection_directory_synchronized_groups, keyed the same as var.connection_directory_synchronized_groups"
  value       = { for k, v in auth0_connection_directory_synchronized_groups.connection_directory_synchronized_groups : k => v.groups }
}

