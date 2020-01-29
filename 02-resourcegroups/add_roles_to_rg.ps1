Get-AzRoleAssignment -ResourceGroupName brett-prod1-rg

New-AzRoleAssignment -SignInName '<guest email address>'#EXT#@'<AD name>'.onmicrosoft.com -RoleDefinitionName "Reader" -ResourceGroupName "brett-prod1-rg"