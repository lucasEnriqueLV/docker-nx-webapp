param webAppName string = uniqueString(resourceGroup().id)
param sku string = 'F1'
param dockerImage string
param acrname string
param location string = resourceGroup().location

var appServicePlanName = toLower('AppServicePlan-${webAppName}')
resource appServicePlan 'Microsoft.Web/serverfarms@2020-06-01' = {
  name: appServicePlanName
  location: location
  properties: {
    reserved: true
  }
  sku: {
    name: sku
  }
  kind: 'linux'
}
resource appService 'Microsoft.Web/sites@2020-06-01' = {
  name: webAppName
  location: location
  properties: {
    serverFarmId: appServicePlan.id
    siteConfig: {
       appSettings: [ {
          name: 'DOCKER_REGISTRY_SERVER_PASSWORD'
          value: containerRegistry.listCredentials().passwords[0].value
        }
        {
          name: 'DOCKER_REGISTRY_SERVER_URL'
          value: '${acrname}.azurecr.io'
        }
        {
          name: 'DOCKER_REGISTRY_SERVER_USERNAME'
          value: containerRegistry.listCredentials().username
        }]
      linuxFxVersion: 'DOCKER|${imgname}'
    }
  }
}
