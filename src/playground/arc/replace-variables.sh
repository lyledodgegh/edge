# myAzureTenantId
# myAzureSubscriptionId
# myAzureServicePrincipalId
# myAzureServicePrincipalSecret
# myAzureResourceGroup
# myAzureLocation
# myAzureTagsDatacenter
# myAzureTagsCity
# myAzureTagsStateOrDistrict
# myAzureTagsCountryOrRegion
# myAzureTagsOwner
# myAzureTagsEnvironment

sed -e "s/__MYAZURETENANTID__/$myAzureTenantId/g
	s/__MYAZURESUBSCRIPTIONID__/$myAzureSubscriptionId/g
	s/__MYAZURESERVICEPRINCIPALID__/$myAzureServicePrincipalId/g
	s/__MYAZURESERVICEPRINCIPALSECRET__/$myAzureServicePrincipalSecret/g
	s/__MYAZURERESOURCEGROUP__/$myAzureResourceGroup/g
	s/__MYAZURELOCATION__/$myAzureLocation/g
	s/__MYAZURETAGSDATACENTER__/$myAzureTagsDatacenter/g
	s/__MYAZURETAGSCITY__/$myAzureTagsCity/g
	s/__MYAZURETAGSSTATEORDISTRICT__/$myAzureTagsStateOrDistrict/g
	s/__MYAZURETAGSCOUNTRYORREGION__/$myAzureTagsCountryOrRegion/g
	s/__MYAZURETAGSOWNER__/$myAzureTagsOwner/g
	s/__MYAZURETAGSENVIRONMENT__/$myAzureTagsEnvironment/g" cloud-init.yaml > temp.yaml
