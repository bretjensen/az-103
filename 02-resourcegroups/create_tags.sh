az group show --name brett-dev-rg --query tags

az group update --name brett-app1-rg --set tags.Owner=JensenBrett tags.Dept=IT