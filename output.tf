output "akvs_output" {
  value       = azurerm_key_vault_secret.aks_secret_obj
  description = "returns the full Azure Key Vault Object"
}