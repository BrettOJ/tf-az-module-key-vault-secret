resource "azurerm_key_vault_secret" "aks_secret_obj" {
  for_each     = var.key_vault_secrets
  name         = each.value.key
  value        = each.value.value
  key_vault_id = var.key_vault_id

  tags = merge(module.akv_secret_name.naming_convention_output.akv_secret.tags.0, { Name = each.value.key })
}
