#! /bin/bash

if [ "$#" -lt 2 ]; then
  echo "O programa $0 requer o nome do arquivo e arquivos a serem compactados"
  exit 1
fi

output_file="$1"
files=("${@:2}")

tar -czf "$output_file" "${files[@]}"

echo "Tar completed: $output_file"

