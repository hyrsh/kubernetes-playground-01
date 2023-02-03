#!/bin/bash

if [ "$1" == "" ]; then
  echo -e "\e[31;1mNo namespace given!\e[0;0m"
  exit 1
fi

kubectl label --overwrite ns $1 pod-security.kubernetes.io/warn-
kubectl label --overwrite ns $1 pod-security.kubernetes.io/warn-version-
kubectl label --overwrite ns $1 pod-security.kubernetes.io/enforce=baseline
kubectl label --overwrite ns $1 pod-security.kubernetes.io/enforce-version=v1.26


