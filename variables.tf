variable "tag_owners" {
  description = <<EOT
Map of tag_owners, attributes below
Required:
    - tag_id
Optional:
    - tag (block):
        - id (optional)
        - name (optional)
    - user (block):
        - id (optional)
        - name (optional)
EOT

  type = map(object({
    tag_id = string
    tag = optional(list(object({
      id   = optional(string)
      name = optional(string)
    })))
    user = optional(list(object({
      id   = optional(string)
      name = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.tag_owners : (
        length(v.tag_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

