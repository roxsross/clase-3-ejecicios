#!/bin/bash
read -p "Introduzca un directorio:   " directorio
if [ -d $directorio ]
then
    num_fichero=$(ls -l $directorio | wc -l)
echo "El numero de directorio" $directorio " es " $num_fichero
else
    echo "El directorio no existe"
fi  