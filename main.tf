data "google_cloud_run_locations" "cloud_run_locations_lookup" {
  for_each = var.cloud_run_locations_lookup

  project = each.value.project
}

