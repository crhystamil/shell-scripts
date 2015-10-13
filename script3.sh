#!/bin/bash
echo "nombre del directorio"
read direc


	if [ -d $direc ]
			then  
		aux find $direc -name 'net*' ]
		if [ "$aux" = "null" ]
			then
			echo "no se encontraron coincidencias"
		else 
			find $direc -name 'net*'
		fi		  
	else
	echo "el directorio no es valido"
fi

