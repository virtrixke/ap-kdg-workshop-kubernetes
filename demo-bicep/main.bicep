resource acr 'Microsoft.ContainerRegistry/registries@2020-11-01-preview' = {
  name: 'demoacrvinvli01'
  location: 'westeurope'
  sku: {
    name: 'Basic'
  }
  properties: {
    adminUserEnabled: false
  }
}

output acrLoginServer string = acr.properties.loginServer
