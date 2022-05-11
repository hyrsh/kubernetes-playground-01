#!/bin/sh

image="haproxy:2.2.23-alpine"
namespace="proxy-hub"
tmpl=./template-haproxy-full.yml
port=80

if [ "$1" == "" ]; then
  echo -e "\e[31;1mNo name given! Exiting ...\e[0;0m"
  exit 1
fi

mkdir ./${1}

cat $tmpl | sed -e "s/{{port}}/${port}/g" -e "s/{{name}}/${1}/g" -e "s/{{image}}/${image}/g" -e "s/{{namespace}}/${namespace}/g" > ./${1}/${1}-dpl.yml

echo -e "\e[32;1mHAProxy deployment file created in: ./${1}/${1}-dpl.yml\e[0;0m"
