output "compute_region_health_checks_id" {
  description = "Map of id values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no id are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_health_checks_check_interval_sec" {
  description = "Map of check_interval_sec values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no check_interval_sec are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.check_interval_sec if v.check_interval_sec != null }
}
output "compute_region_health_checks_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_region_health_checks_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_health_checks_description" {
  description = "Map of description values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no description are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_region_health_checks_grpc_health_check" {
  description = "Map of grpc_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no grpc_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.grpc_health_check) if v.grpc_health_check != null && length(v.grpc_health_check) > 0 }
}
output "compute_region_health_checks_grpc_tls_health_check" {
  description = "Map of grpc_tls_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no grpc_tls_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.grpc_tls_health_check) if v.grpc_tls_health_check != null && length(v.grpc_tls_health_check) > 0 }
}
output "compute_region_health_checks_health_check_id" {
  description = "Map of health_check_id values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no health_check_id are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.health_check_id if v.health_check_id != null }
}
output "compute_region_health_checks_healthy_threshold" {
  description = "Map of healthy_threshold values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no healthy_threshold are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.healthy_threshold if v.healthy_threshold != null }
}
output "compute_region_health_checks_http2_health_check" {
  description = "Map of http2_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no http2_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.http2_health_check) if v.http2_health_check != null && length(v.http2_health_check) > 0 }
}
output "compute_region_health_checks_http_health_check" {
  description = "Map of http_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no http_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.http_health_check) if v.http_health_check != null && length(v.http_health_check) > 0 }
}
output "compute_region_health_checks_https_health_check" {
  description = "Map of https_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no https_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.https_health_check) if v.https_health_check != null && length(v.https_health_check) > 0 }
}
output "compute_region_health_checks_log_config" {
  description = "Map of log_config values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no log_config are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.log_config) if v.log_config != null && length(v.log_config) > 0 }
}
output "compute_region_health_checks_name" {
  description = "Map of name values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no name are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_region_health_checks_project" {
  description = "Map of project values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no project are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_health_checks_region" {
  description = "Map of region values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no region are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_health_checks_self_link" {
  description = "Map of self_link values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no self_link are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_region_health_checks_ssl_health_check" {
  description = "Map of ssl_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no ssl_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.ssl_health_check) if v.ssl_health_check != null && length(v.ssl_health_check) > 0 }
}
output "compute_region_health_checks_tcp_health_check" {
  description = "Map of tcp_health_check values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no tcp_health_check are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => one(v.tcp_health_check) if v.tcp_health_check != null && length(v.tcp_health_check) > 0 }
}
output "compute_region_health_checks_timeout_sec" {
  description = "Map of timeout_sec values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no timeout_sec are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.timeout_sec if v.timeout_sec != null }
}
output "compute_region_health_checks_type" {
  description = "Map of type values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no type are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.type if v.type != null && length(v.type) > 0 }
}
output "compute_region_health_checks_unhealthy_threshold" {
  description = "Map of unhealthy_threshold values across all compute_region_health_checks, keyed the same as var.compute_region_health_checks except keys with no unhealthy_threshold are omitted"
  value       = { for k, v in google_compute_region_health_check.compute_region_health_checks : k => v.unhealthy_threshold if v.unhealthy_threshold != null }
}

