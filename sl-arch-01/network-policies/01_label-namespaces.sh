#!/bin/bash

kubectl label ns proxy-hub netpol=proxy-hub
kubectl label ns sector-1 netpol=sector-1
kubectl label ns sector-2 netpol=sector-2
kubectl label ns sector-3 netpol=sector-3
kubectl label ns kube-system netpol=dns
