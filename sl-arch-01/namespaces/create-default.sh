#!/bin/bash

kubectl create -f proxy-hub/hprx-full/
kubectl create -f sector-1/ngx-s1/
kubectl create -f sector-2/ngx-s2/
kubectl create -f sector-3/ngx-s3/
