Get-AzureADDirectoryRole

$CompanyAdminRole = Get-AzureADDirectoryRole | Where-Object {$_.DisplayName -eq "Company Administrator"}

Get-AzureADDirectoryRoleMember -ObjectId $CompanyAdminRole.ObjectId

Get-AzureADDirectoryRoleTemplate

$SecurityAdminRoleTemplate = Get-AzureADDirectoryRoleTemplate | Where-Object {$._DisplayName -eq "Security Administrator"}

$SecurityAdminRole = Enable-AzureADDirectoryRole -RoleTemplateId $SecurityAdminRoleTemplate.ObjectId

$user = Get-AzureADUser -ObjectId "useremail"

Add-AzureADDirectoryRoleMember -RefObjectId $user.ObjectId -ObjectId $SecurityAdminRole.ObjectId

