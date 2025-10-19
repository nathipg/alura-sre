#! /bin/bash

if [ -e $1 ]; then
  echo "The file exists"
else
  echo "The file doesn't exist"
fi
