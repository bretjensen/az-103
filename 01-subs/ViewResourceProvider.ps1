Get-AzProviderOperation -OperationSearchString "Microsoft.Compute/*/action"

Get-AzResourceProvider -ListAvailable | `
    ?{$_.ProviderNamespace -eq "Microsoft.BotService"}

Register-AzResourceProvider -ProviderNamespace "Microsoft.BotService"

Get-AzResourceProvider -ListAvailable | `
    ?{$_.ProviderNamespace -eq "Microsoft.BotService"}
