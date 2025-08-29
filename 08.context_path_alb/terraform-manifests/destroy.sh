#!/bin/sh

terraform init
terraform plan -destroy 
terraform destroy -auto-approve -no-color > destroy-plan.txt