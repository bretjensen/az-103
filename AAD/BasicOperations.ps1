Find-Module AzureAD

Install-Module -Name AzureAD

Import-Module -Name AzureAD

$AzureADCreds = Get-Credential -Message "Creds to connect to AAD"

Connect-AzureAD -Credential $AzureADCreds

Get-AzureADCurrentSessionInfo

Get-AzureADTenantDetail

Get-AzureADDomain

