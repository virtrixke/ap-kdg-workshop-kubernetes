param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2020-11-01-preview' = {
  name: 'demoacrvinvli01'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: false
  }
}

resource stg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'demostgvinvli01'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    supportsHttpsTrafficOnly: true
  }
}

output acrLoginServer string = acr.properties.loginServer
output storageEndpoint object = stg.properties.primaryEndpoints
