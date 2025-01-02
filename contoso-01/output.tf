output "object_ids" {
  value = [for policy in local.data_kv_access_policy : policy.object_id]
}

output "object_id_found" {
  value = contains(
    [for policy in local.data_kv_access_policy : policy.object_id],
    local.specific_object_id
  )
}