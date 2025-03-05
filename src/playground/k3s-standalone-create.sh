# check prerequisites
bash arc/check-prerequisites.sh

# variables
SERVERNAME="$(echo $RANDOM | tr '[0-9]' '[a-z]')"
export SERVERNAME
export CLUSTERNAME="k3s-$SERVERNAME"

# do replacements for cloud init
sed -e "s/__CLUSTERNAME__/$CLUSTERNAME/g
    s/__MYAZURETENANTID__/$myAzureTenantId/g
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
	s/__MYAZURETAGSENVIRONMENT__/$myAzureTagsEnvironment/g" cloud-inits/arc-k3s-aspnetcore.yaml > /var/tmp/$SERVERNAME.yaml

# call the launch with the cloud init
multipass launch --name $SERVERNAME -d 80G -m 8G -c 4 --cloud-init /var/tmp/$SERVERNAME.yaml -vv

# cleanup
rm /var/tmp/$SERVERNAME.yaml
