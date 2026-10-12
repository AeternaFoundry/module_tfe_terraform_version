variable "terraform_versions" {
  description = <<EOT
Map of terraform_versions, attributes below
Required:
    - version
Optional:
    - archs
    - beta
    - deprecated
    - deprecated_reason
    - enabled
    - official
    - sha
    - url
EOT

  type = map(object({
    version = string
    archs = optional(set(object({
      arch = string
      os   = string
      sha  = string
      url  = string
    })))
    beta              = optional(bool)
    deprecated        = optional(bool)
    deprecated_reason = optional(string)
    enabled           = optional(bool)
    official          = optional(bool)
    sha               = optional(string)
    url               = optional(string)
  }))
}

