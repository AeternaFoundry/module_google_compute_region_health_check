variable "compute_region_health_checks" {
  description = <<EOT
Map of compute_region_health_checks, attributes below
Required:
    - name
Optional:
    - check_interval_sec
    - deletion_policy
    - description
    - healthy_threshold
    - project
    - region
    - timeout_sec
    - unhealthy_threshold
    - grpc_health_check (block):
        - grpc_service_name (optional)
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
    - grpc_tls_health_check (block):
        - grpc_service_name (optional)
        - port (optional)
        - port_specification (optional)
    - http2_health_check (block):
        - host (optional)
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
        - proxy_header (optional)
        - request_path (optional)
        - response (optional)
    - http_health_check (block):
        - host (optional)
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
        - proxy_header (optional)
        - request_path (optional)
        - response (optional)
    - https_health_check (block):
        - host (optional)
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
        - proxy_header (optional)
        - request_path (optional)
        - response (optional)
    - log_config (block):
        - enable (optional)
    - ssl_health_check (block):
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
        - proxy_header (optional)
        - request (optional)
        - response (optional)
    - tcp_health_check (block):
        - port (optional)
        - port_name (optional)
        - port_specification (optional)
        - proxy_header (optional)
        - request (optional)
        - response (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                = string
    check_interval_sec  = optional(number)
    deletion_policy     = optional(string)
    description         = optional(string)
    healthy_threshold   = optional(number)
    project             = optional(string)
    region              = optional(string)
    timeout_sec         = optional(number)
    unhealthy_threshold = optional(number)
    grpc_health_check = optional(object({
      grpc_service_name  = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
    }))
    grpc_tls_health_check = optional(object({
      grpc_service_name  = optional(string)
      port               = optional(number)
      port_specification = optional(string)
    }))
    http2_health_check = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    http_health_check = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    https_health_check = optional(object({
      host               = optional(string)
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      request_path       = optional(string)
      response           = optional(string)
    }))
    log_config = optional(object({
      enable = optional(bool)
    }))
    ssl_health_check = optional(object({
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      request            = optional(string)
      response           = optional(string)
    }))
    tcp_health_check = optional(object({
      port               = optional(number)
      port_name          = optional(string)
      port_specification = optional(string)
      proxy_header       = optional(string)
      request            = optional(string)
      response           = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 12 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

