# make sure you ran the prerquisites script before running this script

export authType="principal";
export correlationId=$(uuidgen);
export cloud="AzureCloud";

LINUX_INSTALL_SCRIPT="/tmp/install_linux_azcmagent.sh"

if [ -f "$LINUX_INSTALL_SCRIPT" ]; then rm -f "$LINUX_INSTALL_SCRIPT"; fi;
output=$(wget https://gbl.his.arc.azure.com/azcmagent-linux -O "$LINUX_INSTALL_SCRIPT" 2>&1);

if [ $? != 0 ]; then wget -qO- --method=PUT --body-data="{\"subscriptionId\":\"$myAzureSubscriptionId\",\"resourceGroup\":\"$myAzureResourceGroup\",\"tenantId\":\"$myAzureTenantId\",\"location\":\"$myAzureLocation\",\"correlationId\":\"$(uuidgen)\",\"authType\":\"$authType\",\"operation\":\"onboarding\",\"messageType\":\"DownloadScriptFailed\",\"message\":\"$output\"}" "https://gbl.his.arc.azure.com/log" &> /dev/null || true; fi;

echo "$output";

bash "$LINUX_INSTALL_SCRIPT";

sudo azcmagent connect \
    --service-principal-id "$myAzureServicePrincipalId" \
    --service-principal-secret "$myAzureServicePrincipalSecret" \
    --resource-group "$myAzureResourceGroup" \
    --tenant-id "$myAzureTenantId" \
    --location "$myAzureLocation" \
    --subscription-id "$myAzureSubscriptionId" \
    --cloud "$cloud" \
    --tags 'ArcSQLServerExtensionDeployment=Disabled' \
    --correlation-id "$correlationId";
