#!/bin/bash

# Check if the environment variable 'myAzureTenantId' is set
if [ -z "$myAzureTenantId" ]; then
    # Prompt the user for the value of 'myAzureTenantId'
    read -p "The environment variable 'myAzureTenantId' is not set. Please enter a value for 'myAzureTenantId': " myAzureTenantId

    # Set the value of 'myAzureTenantId' at the end of .bashrc
    echo "export myAzureTenantId=\"$myAzureTenantId\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTenantId' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTenantId' is already set to '$myAzureTenantId'."
fi

# Check if the environment variable 'myAzureSubscriptionId' is set
if [ -z "$myAzureSubscriptionId" ]; then
    # Prompt the user for the value of 'myAzureSubscriptionId'
    read -p "The environment variable 'myAzureSubscriptionId' is not set. Please enter a value for 'myAzureSubscriptionId': " myAzureSubscriptionId

    # Set the value of 'myAzureSubscriptionId' at the end of .bashrc
    echo "export myAzureSubscriptionId=\"$myAzureSubscriptionId\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureSubscriptionId' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureSubscriptionId' is already set to '$myAzureSubscriptionId'."
fi

# Check if the environment variable 'myAzureServicePrincipalId' is set
if [ -z "$myAzureServicePrincipalId" ]; then
    # Prompt the user for the value of 'myAzureServicePrincipalId'
    read -p "The environment variable 'myAzureServicePrincipalId' is not set. Please enter a value for 'myAzureServicePrincipalId': " myAzureServicePrincipalId

    # Set the value of 'myAzureServicePrincipalId' at the end of .bashrc
    echo "export myAzureServicePrincipalId=\"$myAzureServicePrincipalId\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureServicePrincipalId' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureServicePrincipalId' is already set to '$myAzureServicePrincipalId'."
fi

# Check if the environment variable 'myAzureServicePrincipalSecret' is set
if [ -z "$myAzureServicePrincipalSecret" ]; then
    # Prompt the user for the value of 'myAzureServicePrincipalSecret'
    read -p "The environment variable 'myAzureServicePrincipalSecret' is not set. Please enter a value for 'myAzureServicePrincipalSecret': " myAzureServicePrincipalSecret

    # Set the value of 'myAzureServicePrincipalSecret' at the end of .bashrc
    echo "export myAzureServicePrincipalSecret=\"$myAzureServicePrincipalSecret\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureServicePrincipalSecret' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureServicePrincipalSecret' is already set to '$myAzureServicePrincipalSecret'."
fi

# Check if the environment variable 'myAzureResourceGroup' is set
if [ -z "$myAzureResourceGroup" ]; then
    # Prompt the user for the value of 'myAzureResourceGroup'
    read -p "The environment variable 'myAzureResourceGroup' is not set. Please enter a value for 'myAzureResourceGroup': " myAzureResourceGroup

    # Set the value of 'myAzureResourceGroup' at the end of .bashrc
    echo "export myAzureResourceGroup=\"$myAzureResourceGroup\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureResourceGroup' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureResourceGroup' is already set to '$myAzureResourceGroup'."
fi

# Check if the environment variable 'myAzureLocation' is set
if [ -z "$myAzureLocation" ]; then
    # Prompt the user for the value of 'myAzureLocation'
    read -p "The environment variable 'myAzureLocation' is not set. Please enter a value for 'myAzureLocation': " myAzureLocation

    # Set the value of 'myAzureLocation' at the end of .bashrc
    echo "export myAzureLocation=\"$myAzureLocation\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureLocation' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureLocation' is already set to '$myAzureLocation'."
fi

# Check if the environment variable 'myAzureTagsDatacenter' is set
if [ -z "$myAzureTagsDatacenter" ]; then
    # Prompt the user for the value of 'myAzureTagsDatacenter'
    read -p "The environment variable 'myAzureTagsDatacenter' is not set. Please enter a value for 'myAzureTagsDatacenter': " myAzureTagsDatacenter

    # Set the value of 'myAzureTagsDatacenter' at the end of .bashrc
    echo "export myAzureTagsDatacenter=\"$myAzureTagsDatacenter\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsDatacenter' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsDatacenter' is already set to '$myAzureTagsDatacenter'."
fi

# Check if the environment variable 'myAzureTagsCity' is set
if [ -z "$myAzureTagsCity" ]; then
    # Prompt the user for the value of 'myAzureTagsCity'
    read -p "The environment variable 'myAzureTagsCity' is not set. Please enter a value for 'myAzureTagsCity': " myAzureTagsCity

    # Set the value of 'myAzureTagsCity' at the end of .bashrc
    echo "export myAzureTagsCity=\"$myAzureTagsCity\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsCity' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsCity' is already set to '$myAzureTagsCity'."
fi

# Check if the environment variable 'myAzureTagsStateOrDistrict' is set
if [ -z "$myAzureTagsStateOrDistrict" ]; then
    # Prompt the user for the value of 'myAzureTagsStateOrDistrict'
    read -p "The environment variable 'myAzureTagsStateOrDistrict' is not set. Please enter a value for 'myAzureTagsStateOrDistrict': " myAzureTagsStateOrDistrict

    # Set the value of 'myAzureTagsStateOrDistrict' at the end of .bashrc
    echo "export myAzureTagsStateOrDistrict=\"$myAzureTagsStateOrDistrict\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsStateOrDistrict' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsStateOrDistrict' is already set to '$myAzureTagsStateOrDistrict'."
fi

# Check if the environment variable 'myAzureTagsCountryOrRegion' is set
if [ -z "$myAzureTagsCountryOrRegion" ]; then
    # Prompt the user for the value of 'myAzureTagsCountryOrRegion'
    read -p "The environment variable 'myAzureTagsCountryOrRegion' is not set. Please enter a value for 'myAzureTagsCountryOrRegion': " myAzureTagsCountryOrRegion

    # Set the value of 'myAzureTagsCountryOrRegion' at the end of .bashrc
    echo "export myAzureTagsCountryOrRegion=\"$myAzureTagsCountryOrRegion\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsCountryOrRegion' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsCountryOrRegion' is already set to '$myAzureTagsCountryOrRegion'."
fi

# Check if the environment variable 'myAzureTagsOwner' is set
if [ -z "$myAzureTagsOwner" ]; then
    # Prompt the user for the value of 'myAzureTagsOwner'
    read -p "The environment variable 'myAzureTagsOwner' is not set. Please enter a value for 'myAzureTagsOwner': " myAzureTagsOwner

    # Set the value of 'myAzureTagsOwner' at the end of .bashrc
    echo "export myAzureTagsOwner=\"$myAzureTagsOwner\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsOwner' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsOwner' is already set to '$myAzureTagsOwner'."
fi

# Check if the environment variable 'myAzureTagsEnvironment' is set
if [ -z "$myAzureTagsEnvironment" ]; then
    # Prompt the user for the value of 'myAzureTagsEnvironment'
    read -p "The environment variable 'myAzureTagsEnvironment' is not set. Please enter a value for 'myAzureTagsEnvironment': " myAzureTagsEnvironment

    # Set the value of 'myAzureTagsEnvironment' at the end of .bashrc
    echo "export myAzureTagsEnvironment=\"$myAzureTagsEnvironment\"" >> ~/.bashrc

    # Inform the user to source the .bashrc file
    echo "The environment variable 'myAzureTagsEnvironment' has been set. Please run 'source ~/.bashrc' to apply the changes."
else
    echo "The environment variable 'myAzureTagsEnvironment' is already set to '$myAzureTagsEnvironment'."
fi
