1 - az keyvault secret list-versions --vault-name rvskvsdsss --name secret-sauce   --query "sort_by([].{id:id, created:attributes.created}, &created)[-1].id" -o tsv

2 - output:
https://rvskvsdsss.vault.azure.net/secrets/secret-sauce/9805fa713c3e45328da39a25b1a7a2ae

3 - az keyvault secret show --id "https://rvskvsdsss.vault.azure.net/secrets/secret-sauce/9805fa713c3e45328da39a25b1a7a2ae" --query "value" -o tsv