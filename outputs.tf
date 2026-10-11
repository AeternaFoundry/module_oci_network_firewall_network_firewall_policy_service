output "network_firewall_network_firewall_policy_services_id" {
  description = "Map of id values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_firewall_network_firewall_policy_services_description" {
  description = "Map of description values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no description are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.description if v.description != null && length(v.description) > 0 }
}
output "network_firewall_network_firewall_policy_services_name" {
  description = "Map of name values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no name are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.name if v.name != null && length(v.name) > 0 }
}
output "network_firewall_network_firewall_policy_services_network_firewall_policy_id" {
  description = "Map of network_firewall_policy_id values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no network_firewall_policy_id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.network_firewall_policy_id if v.network_firewall_policy_id != null && length(v.network_firewall_policy_id) > 0 }
}
output "network_firewall_network_firewall_policy_services_parent_resource_id" {
  description = "Map of parent_resource_id values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no parent_resource_id are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.parent_resource_id if v.parent_resource_id != null && length(v.parent_resource_id) > 0 }
}
output "network_firewall_network_firewall_policy_services_port_ranges" {
  description = "Map of port_ranges values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no port_ranges are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.port_ranges if v.port_ranges != null && length(v.port_ranges) > 0 }
}
output "network_firewall_network_firewall_policy_services_type" {
  description = "Map of type values across all network_firewall_network_firewall_policy_services, keyed the same as var.network_firewall_network_firewall_policy_services except keys with no type are omitted"
  value       = { for k, v in oci_network_firewall_network_firewall_policy_service.network_firewall_network_firewall_policy_services : k => v.type if v.type != null && length(v.type) > 0 }
}

