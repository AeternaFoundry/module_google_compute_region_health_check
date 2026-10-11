resource "google_compute_region_health_check" "compute_region_health_checks" {
  for_each = var.compute_region_health_checks

  name                = each.value.name
  check_interval_sec  = each.value.check_interval_sec
  deletion_policy     = each.value.deletion_policy
  description         = each.value.description
  healthy_threshold   = each.value.healthy_threshold
  project             = each.value.project
  region              = each.value.region
  timeout_sec         = each.value.timeout_sec
  unhealthy_threshold = each.value.unhealthy_threshold

  dynamic "grpc_health_check" {
    for_each = each.value.grpc_health_check != null ? [each.value.grpc_health_check] : []
    content {
      grpc_service_name  = grpc_health_check.value.grpc_service_name
      port               = grpc_health_check.value.port
      port_name          = grpc_health_check.value.port_name
      port_specification = grpc_health_check.value.port_specification
    }
  }

  dynamic "grpc_tls_health_check" {
    for_each = each.value.grpc_tls_health_check != null ? [each.value.grpc_tls_health_check] : []
    content {
      grpc_service_name  = grpc_tls_health_check.value.grpc_service_name
      port               = grpc_tls_health_check.value.port
      port_specification = grpc_tls_health_check.value.port_specification
    }
  }

  dynamic "http2_health_check" {
    for_each = each.value.http2_health_check != null ? [each.value.http2_health_check] : []
    content {
      host               = http2_health_check.value.host
      port               = http2_health_check.value.port
      port_name          = http2_health_check.value.port_name
      port_specification = http2_health_check.value.port_specification
      proxy_header       = http2_health_check.value.proxy_header
      request_path       = http2_health_check.value.request_path
      response           = http2_health_check.value.response
    }
  }

  dynamic "http_health_check" {
    for_each = each.value.http_health_check != null ? [each.value.http_health_check] : []
    content {
      host               = http_health_check.value.host
      port               = http_health_check.value.port
      port_name          = http_health_check.value.port_name
      port_specification = http_health_check.value.port_specification
      proxy_header       = http_health_check.value.proxy_header
      request_path       = http_health_check.value.request_path
      response           = http_health_check.value.response
    }
  }

  dynamic "https_health_check" {
    for_each = each.value.https_health_check != null ? [each.value.https_health_check] : []
    content {
      host               = https_health_check.value.host
      port               = https_health_check.value.port
      port_name          = https_health_check.value.port_name
      port_specification = https_health_check.value.port_specification
      proxy_header       = https_health_check.value.proxy_header
      request_path       = https_health_check.value.request_path
      response           = https_health_check.value.response
    }
  }

  dynamic "log_config" {
    for_each = each.value.log_config != null ? [each.value.log_config] : []
    content {
      enable = log_config.value.enable
    }
  }

  dynamic "ssl_health_check" {
    for_each = each.value.ssl_health_check != null ? [each.value.ssl_health_check] : []
    content {
      port               = ssl_health_check.value.port
      port_name          = ssl_health_check.value.port_name
      port_specification = ssl_health_check.value.port_specification
      proxy_header       = ssl_health_check.value.proxy_header
      request            = ssl_health_check.value.request
      response           = ssl_health_check.value.response
    }
  }

  dynamic "tcp_health_check" {
    for_each = each.value.tcp_health_check != null ? [each.value.tcp_health_check] : []
    content {
      port               = tcp_health_check.value.port
      port_name          = tcp_health_check.value.port_name
      port_specification = tcp_health_check.value.port_specification
      proxy_header       = tcp_health_check.value.proxy_header
      request            = tcp_health_check.value.request
      response           = tcp_health_check.value.response
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

