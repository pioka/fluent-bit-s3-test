#!/bin/sh

set -eu

while true; do
  echo "$(date -Iseconds)  $(head -c 48 /dev/urandom | base64)" | tee -a $1
  sleep 1
done

