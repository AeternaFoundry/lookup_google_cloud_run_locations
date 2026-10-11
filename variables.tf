variable "cloud_run_locations_lookup" {
  description = <<EOT
Map of cloud_run_locations_lookup, attributes below
Optional:
    - project
EOT

  type = map(object({
    project = optional(string)
  }))
}

