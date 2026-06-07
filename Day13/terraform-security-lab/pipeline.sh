#!/bin/bash

echo "Formatting Terraform files..."
terraform fmt -recursive

echo "Validating Terraform..."
terraform validate

echo "Running tfsec..."
tfsec .

echo "Initialize Terraform..."
terraform init

echo "Generating Terraform plan..."
terraform plan