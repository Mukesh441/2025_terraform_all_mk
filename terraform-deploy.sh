#!/bin/sh
terraform init
terraform validate
terraform plan -no-color > plan.txt
terraform apply -auto-approve