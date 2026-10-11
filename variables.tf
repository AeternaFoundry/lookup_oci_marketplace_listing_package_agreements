variable "marketplace_listing_package_agreements_lookup" {
  description = <<EOT
Map of marketplace_listing_package_agreements_lookup, attributes below
Required:
    - listing_id
    - package_version
Optional:
    - compartment_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    listing_id      = string
    package_version = string
    compartment_id  = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

