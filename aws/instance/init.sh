#!/bin/bash

pub=$(cat ~/.ssh/id_rsa.pub)
echo "PUBLIC_KEY = " > ./terraform.tfvars
cat ~/.ssh/id_rsa.pub > ./terraform.tfvars