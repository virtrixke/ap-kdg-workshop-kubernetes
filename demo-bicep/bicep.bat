az account set -s <subscription>
az deployment group create -f ./main.bicep -g <resource-group>

or

Set-AzAccount "<subscription>"
New-AzResourceGroupDeployment -Name bicep -ResourceGroupName <resource-group> -TemplateFile <main.bicep>