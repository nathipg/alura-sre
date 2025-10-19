#! /bin/bash

read -p "Entre com a operacao desejada: 'compactar' ou 'descompactar'" op

case "$op" in
  "compactar")
    read -p "Nome do arquivo final (.tar.gz): " arquivo_saida
    read -p "Lista de arquivos separados por espaco: " arquivos
    tar -czf "$arquivo_saida" $arquivos
    echo "Compactados com sucesso em $arquivo_saida"
  ;;
  "descompactar")
    read -p "Nome do arquivo a ser descompactado (.tar.gz): " arquivo 
    read -p "Diretorio de destino: " diretorio
    tar -xzf "$arquivo" -C "$diretorio"
    echo "Descompactado com sucesso em $diretorio" 
  ;;
  *)
  echo "Operacao invalida!"
  exit 1
  ;;
esac
 

