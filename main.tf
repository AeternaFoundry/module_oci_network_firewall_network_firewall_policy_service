resource "oci_network_firewall_network_firewall_policy_service" "network_firewall_network_firewall_policy_services" {
  for_each = var.network_firewall_network_firewall_policy_services

  name                       = each.value.name
  network_firewall_policy_id = each.value.network_firewall_policy_id
  type                       = each.value.type
  description                = each.value.description

  dynamic "port_ranges" {
    for_each = each.value.port_ranges
    content {
      maximum_port = port_ranges.value.maximum_port
      minimum_port = port_ranges.value.minimum_port
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

