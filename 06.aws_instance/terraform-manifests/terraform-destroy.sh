#!/bin/sh

terraform init
terraform plan -destroy -no-color > destroy-plan.txt
terraform destroy -auto-approve