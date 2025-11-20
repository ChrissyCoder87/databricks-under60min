$KEYVAULT_NAME = "kvdatabricks2025112011"
$env:TF_VAR_subscription_id   = az keyvault secret show --vault-name $KEYVAULT_NAME --name "azure-subscription-id" --query value -o tsv
$env:TF_VAR_azure_client_id    = az keyvault secret show --vault-name $KEYVAULT_NAME --name "azure-client-id" --query value -o tsv
$env:TF_VAR_azure_client_secret= az keyvault secret show --vault-name $KEYVAULT_NAME --name "azure-client-secret" --query value -o tsv
$env:TF_VAR_azure_tenant_id    = az keyvault secret show --vault-name $KEYVAULT_NAME --name "azure-tenant-id" --query value -o tsv
Write-Host "Secrets loaded from Key Vault: $KEYVAULT_NAME" -ForegroundColor Green
