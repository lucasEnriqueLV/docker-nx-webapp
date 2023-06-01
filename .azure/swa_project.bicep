param name string = 'meusiteangular'
param location string = resourceGroup().location
param sku string = 'Free'

resource swa_resource 'Microsoft.Web/staticSites@2021-01-15' = {
    name: name
    location: location
    tags: null
    properties: {
      branch: 'master'
      repositoryUrl: 'https://github.com/lucasEnriqueLV/docker-nx-webapp.git'
      buildProperties: {
        appLocation: './'
        apiLocation: './api'
        outputLocation: './dist'
        }
    }
    sku: {
        name: sku
        size: sku
    }
}
