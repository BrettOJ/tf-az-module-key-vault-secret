variable "key_vault_id" {
  type = string
  description = "Specify the id of the key vault to create the secret in."
}

variable "naming_convention_info" {
  description = "(Required) Specify the naming convention information to the resource."
  type = object({
    name         = string
    project_code = string
    agency_code  = string
    env          = string
    zone         = string
    tier         = string
  })
}

variable "tags" {
  type        = map(string)
  description = "Specify the tags to the resource. Additional tags will be appended based on the convention"
}
variable "key_vault_secrets" {
  type = map(object({
    key   = string
    value = string
  }))
}
