#!/bin/bash

kubectl label ns proxy-hub netpol-
kubectl label ns sector-1 netpol-
kubectl label ns sector-2 netpol-
kubectl label ns sector-3 netpol-
kubectl label ns kube-system netpol-
