#Create Role
az role definition create --role-definition createCustomRole.json

#List Custome Roles
az role definition list --custom-role-only true | grep roleName

