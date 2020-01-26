$inv = Get-AzBillingInvoice -Latest
Invoke-WebRequest -Uri $inv.DownloadUrl -OutFile ('./billing/' + $inv.Name + '.pdf')