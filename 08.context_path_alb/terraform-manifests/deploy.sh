#!/bin/sh
terraform init -reconfigure
terraform validate
terraform plan 
terraform apply -auto-approve -no-color >> plan.txt