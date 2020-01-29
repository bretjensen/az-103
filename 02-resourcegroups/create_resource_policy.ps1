$rg = Get-AzResourceGroup -Name 'brett-prod1-rg' 
$rg.ResourceId

$definition = New-AzPolicyDefinition -Name "allowed-locations" -DisplayName "BJ - Allowed Locations" -Description "Some text about how this allows certain locations" `
    -Policy "https://raw.githubusercontent.com/Azure/azure-policy/master/samples/built-in-policy/allowed-locations/azurepolicy.rules.json" `
    -Parameter "https://raw.githubusercontent.com/Azure/azure-policy/master/samples/built-in-policy/allowed-locations/azurepolicy.parameters.json" `
    -Mode All

    