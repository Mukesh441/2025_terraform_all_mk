#!/bin/sh
terraform init -reconfigure
terraform validate
terraform plan -no-color > plan.txt
terraform apply -auto-approve