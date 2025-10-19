#! /bin/bash

image_to_convert=$1
resize=""
final_image=$2

if [ ! -e $image_to_convert ]; then
  echo "Image doesnt exist"
  exit 1
fi

if [ $3 ]; then
  resize="-resize $3" #800x600
fi

convert $image_to_convert $resize $final_image

