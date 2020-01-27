(Get-AzResourceGroup -Name brett-net-rg).Tags

Set-AzResourceGroup -Name brett-dev-rg -Tag @{ Dept = "IT"; Owner = "IanBrett" }

$tags = (Get-AzResourceGroup -Name brett-dev-rg).Tags

Set-AzResourceGroup -Tag @{ } -Name brett-dev-rg

$tags.Add("CostCenter", "Research")

Set-AzResourceGroup -Name brett-dev-rg -Tag $tags