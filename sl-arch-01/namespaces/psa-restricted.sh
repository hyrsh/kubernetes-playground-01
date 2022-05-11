#!/bin/bash

if [ "$1" == "" ]; then
  echo -e "\e[31;1mNo namespace given! Exiting ...\e[0;0m"
  exit 1
fi

kubectl label ns ${1} pod-security.kubernetes.io/enforce=restricted
kubectl label ns ${1} pod-security.kubernetes.io/enforce-version=latest
kubectl label ns ${1} pod-security.kubernetes.io/warn=restricted
kubectl label ns ${1} pod-security.kubernetes.io/warn-version=latest

echo -e "\e[32;1mNamespace \e[31;1m${1}\e[0;0m is now RESTRICTED!\e[0;0m"
