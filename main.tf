data "databricks_data_quality_refresh" "data_quality_refresh_lookup" {
  for_each = var.data_quality_refresh_lookup

  object_id       = each.value.object_id
  object_type     = each.value.object_type
  refresh_id      = each.value.refresh_id
  provider_config = each.value.provider_config
}

