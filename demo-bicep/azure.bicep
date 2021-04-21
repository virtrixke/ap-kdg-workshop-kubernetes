resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: '{provide-unique-name}'
  location: 'westeurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}
