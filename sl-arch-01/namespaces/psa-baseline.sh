#!/bin/bash

if [ "$1" == "" ]; then
  echo -e "\e[31;1mNo namespace given! Exiting ...\e[0;0m"
  exit 1
fi

kubectl label ns ${1} pod-security.kubernetes.io/enforce=baseline
kubectl label ns ${1} pod-security.kubernetes.io/enforce-version=latest
kubectl label ns ${1} pod-security.kubernetes.io/warn=baseline
kubectl label ns ${1} pod-security.kubernetes.io/warn-version=latest

echo -e "\e[32;1mNamespace \e[31;1m${1}\e[0;0m is now BASELINED!\e[0;0m"
