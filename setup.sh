#!/bin/bash

echo '..start creating terraform file structure'


sleep 5

touch jenkinsfile
touch main.tf
touch provider.tf
touch terraform.tf
touch variable.tf
touch output.tf
touch terraform.tfvars

echo '...completed'
