# make sure you ran the prerquisites script before running this script

multipass exec node1 -- wget https://gbl.his.arc.azure.com/azcmagent-linux -O /tmp/install_linux_azcmagent.sh
multipass exec node1 -- bash /tmp/install_linux_azcmagent.sh
multipass exec node1 -- sudo azcmagent connect --service-principal-id $myAzureServicePrincipalId --service-principal-secret $myAzureServicePrincipalSecret --resource-group $myAzureResourceGroup --tenant-id $myAzureTenantId --location $myAzureLocation --subscription-id $myAzureSubscriptionId --cloud "AzureCloud" --tags 'ArcSQLServerExtensionDeployment=Disabled' --correlation-id $(uuidgen)
