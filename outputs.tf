output "terraform_versions_id" {
  description = "Map of id values across all terraform_versions, keyed the same as var.terraform_versions except keys with no id are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "terraform_versions_archs" {
  description = "Map of archs values across all terraform_versions, keyed the same as var.terraform_versions except keys with no archs are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.archs if v.archs != null && length(v.archs) > 0 }
}
output "terraform_versions_beta" {
  description = "Map of beta values across all terraform_versions, keyed the same as var.terraform_versions except keys with no beta are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.beta if v.beta != null }
}
output "terraform_versions_deprecated" {
  description = "Map of deprecated values across all terraform_versions, keyed the same as var.terraform_versions except keys with no deprecated are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.deprecated if v.deprecated != null }
}
output "terraform_versions_deprecated_reason" {
  description = "Map of deprecated_reason values across all terraform_versions, keyed the same as var.terraform_versions except keys with no deprecated_reason are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.deprecated_reason if v.deprecated_reason != null && length(v.deprecated_reason) > 0 }
}
output "terraform_versions_enabled" {
  description = "Map of enabled values across all terraform_versions, keyed the same as var.terraform_versions except keys with no enabled are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.enabled if v.enabled != null }
}
output "terraform_versions_official" {
  description = "Map of official values across all terraform_versions, keyed the same as var.terraform_versions except keys with no official are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.official if v.official != null }
}
output "terraform_versions_sha" {
  description = "Map of sha values across all terraform_versions, keyed the same as var.terraform_versions except keys with no sha are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.sha if v.sha != null && length(v.sha) > 0 }
}
output "terraform_versions_url" {
  description = "Map of url values across all terraform_versions, keyed the same as var.terraform_versions except keys with no url are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.url if v.url != null && length(v.url) > 0 }
}
output "terraform_versions_version" {
  description = "Map of version values across all terraform_versions, keyed the same as var.terraform_versions except keys with no version are omitted"
  value       = { for k, v in tfe_terraform_version.terraform_versions : k => v.version if v.version != null && length(v.version) > 0 }
}

