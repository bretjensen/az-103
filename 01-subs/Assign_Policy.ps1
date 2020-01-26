$rg = Get-AzResourceGroup -Name brett-103

$policy_def = Get-AzPolicyDefinition | `
    ? { $_.Properties.DisplayName -eq "Audit VMs that do not use managed disks" }

New-AzPolicyAssignment -Name "Check for managed disks" `
    -DisplayName "Check for Managed Disks" -Scope $rg.ResourceId -PolicyDefinition $policy_def

