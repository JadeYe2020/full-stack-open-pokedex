#!/bin/bash

echo "Hello from shell script"

VAR="$(curl https://fullstackopen-cicd.fly.dev/health)"

echo "$VAR is returned"

if [ "$VAR" == "ok" ]; then
  exit 0
else
  exit 1
fi

exit 0 # exit status 0 means that the script "succeeds"