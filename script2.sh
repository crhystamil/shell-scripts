#!/bin/bash

echo "nombre del directorio"
read direc

	if [ -d $direc ]
			then 
				ls $direc|wc -w 
			echo "el numero de elementos que contiene el directorio es:"
	else 
	  	echo "el directorio no existe."
	fi 
	
 
