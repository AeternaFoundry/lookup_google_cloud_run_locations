output "cloud_run_locations_lookup_id" {
  description = "Map of id values across all cloud_run_locations_lookup, keyed the same as var.cloud_run_locations_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_cloud_run_locations.cloud_run_locations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_run_locations_lookup_locations" {
  description = "Map of locations values across all cloud_run_locations_lookup, keyed the same as var.cloud_run_locations_lookup except keys with no locations are omitted"
  value       = { for k, v in data.google_cloud_run_locations.cloud_run_locations_lookup : k => v.locations if v.locations != null && length(v.locations) > 0 }
}
output "cloud_run_locations_lookup_project" {
  description = "Map of project values across all cloud_run_locations_lookup, keyed the same as var.cloud_run_locations_lookup except keys with no project are omitted"
  value       = { for k, v in data.google_cloud_run_locations.cloud_run_locations_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}

