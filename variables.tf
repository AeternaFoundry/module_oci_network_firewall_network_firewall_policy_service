variable "network_firewall_network_firewall_policy_services" {
  description = <<EOT
Map of network_firewall_network_firewall_policy_services, attributes below
Required:
    - name
    - network_firewall_policy_id
    - type
    - port_ranges (block):
        - maximum_port (optional)
        - minimum_port (required)
Optional:
    - description
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                       = string
    network_firewall_policy_id = string
    type                       = string
    description                = optional(string)
    port_ranges = list(object({
      maximum_port = optional(number)
      minimum_port = number
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_firewall_network_firewall_policy_services : (
        length(v.port_ranges) >= 1
      )
    ])
    error_message = "Each port_ranges list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.network_firewall_network_firewall_policy_services : (
        contains(["TCP_SERVICE", "UDP_SERVICE"], v.type)
      )
    ])
    error_message = "must be one of: \"TCP_SERVICE\", \"UDP_SERVICE\""
  }
}

