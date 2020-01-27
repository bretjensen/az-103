#List resource Types from Az Account
az provider list | grep resourceType

az provider show --namespace "Microsoft.AnalysisServices"

az provider register --namespace "Microsoft.AnalysisServices"
