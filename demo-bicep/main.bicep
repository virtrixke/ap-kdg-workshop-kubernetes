param location string = resourceGroup().location

var containerName = 'mycont'

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

resource cont 'Microsoft.Storage/storageAccounts/blobServices@2021-02-01' = {
  name: '${stg.name}/${containerName}'
}

output acrLoginServer string = acr.properties.loginServer
output storageId string = stg.id
