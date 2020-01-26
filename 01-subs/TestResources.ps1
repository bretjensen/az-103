#Login-AzAccount
#Get-AzSubscription
#Set-AzContext "IW Azure Hack"

(Get-AzResource -ResourceGroupName brett-103 -Name "Ubut-1").Tags
(Get-AzResource -Tag @{Project = "" }).Name

Get-AzResource -TagName Project

$r = Get-AzResource -Name Ubut-1 -ResourceGroupName brett-103
$tags = (Get-AzResource -Name Ubut-1).Tags
$tags += @{Project = "Manage Subscriptions"; Lifecycle = "Study" } 

Set-AzResource -ResourceId $r.Id -Tag $tags -Force
Set-AzResource -Tag @{ } -ResourceId $r.Id -Force

Get-AzTag