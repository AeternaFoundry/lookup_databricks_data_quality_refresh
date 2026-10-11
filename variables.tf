variable "data_quality_refresh_lookup" {
  description = <<EOT
Map of data_quality_refresh_lookup, attributes below
Required:
    - object_id
    - object_type
    - refresh_id
Optional:
    - provider_config
EOT

  type = map(object({
    object_id   = string
    object_type = string
    refresh_id  = number
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

