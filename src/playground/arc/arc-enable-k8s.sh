# This script creates an Azure Arc resource to connect a Kubernetes cluster to Azure
# Documentation: https://aka.ms/AzureArcK8sDocs

# Log into Azure
az login --use-device-code --tenant ""

# Set Azure subscription
az account set --subscription ""

# Create connected cluster
az connectedk8s connect \
    --name "" \
    --resource-group "" \
    --location "" \
    --correlation-id "$(uuidgen)" \
    --tags "Datacenter=MyDatacenter City=MyCity StateOrDistrict=MyStateOrDistrict CountryOrRegion=MyCountryOrRegion owner=OwnerEmail environment=Development"
