#!/bin/bash

kubectl delete -f proxy-hub/hprx-full/
kubectl delete -f sector-1/ngx-s1/
kubectl delete -f sector-2/ngx-s2/
kubectl delete -f sector-3/ngx-s3/
