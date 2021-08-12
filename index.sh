#! /bin/sh
set -e 
case $1 in 
  "tf-aply")
    cd infra
    terraform init
    echo yes | terraform apply
  ;;
esac