param storageAccountName string
param location string = 'eastus'
param tags object = {
  env: 'dev'
  owner: 'Rakesh'
  project: 'azure-data-pipeline'
}

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-01-01' = {
  name: storageAccountName
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  tags: tags
}
