#!/bin/bash
# generate 128bit security code into `config/application.yml` by keys
path=$1
keys_str=$2
touch $path
IFS=',' read -ra keys <<< "$keys_str"
for key in "${keys[@]}"; do
    code=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 128 | head -n 1)
    echo "$key: $code" >> $path
done
