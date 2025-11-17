#!/usr/bin/env bash
az group create --name rg-cloud-data-pipeline --location eastus
az storage account create \
  --name clouddatastore<youruniqid> \
  --resource-group rg-cloud-data-pipeline \
  --location eastus \
  --sku Standard_LRS \
  --kind StorageV2
