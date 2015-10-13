#!/bin/bash

echo "ingrese la ruta del directorio"
echo "ej: /home/fuzzer/projects/"
read path
echo "Lista de archivos encontrados"
cont=0
if [ -d $path ]
then 
    for a in `ls $path`
    do 
        aux=$path$a 
        if [ -f $aux ] && [ -x $aux ]
        then 
            cont=$(( $cont + 1 ))
            echo $aux >> lista_ejecutables.txt
        fi 
    done
    cat lista_ejecutables.txt
    echo "Se han encontrado $cont archivos"
else
    echo "el $path no es valido!!!"
fi

