param location string = resourceGroup().location

resource acr 'Microsoft.ContainerRegistry/registries@2019-05-01' = {
  name: 'demoacrvinvli01'
  location: location
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: false
  }
}

resource stg 'Microsoft.Storage/storageAccounts@2019-06-01' = {
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
