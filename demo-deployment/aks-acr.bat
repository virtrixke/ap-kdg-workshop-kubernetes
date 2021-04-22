az login
az account set -s <sub>
az aks update -n myAKSCluster -g myResourceGroup --attach-acr <acr-name>