#!/bin/bask

echo "1 : lista los archivos por fecha de modificacion"
echo "2 : lista primero los directorios y luego los archivos"
echo "3 : ordena por tamaño de archivo"
echo "4 : salir"
echo "ingrese una opción"
read op
 
case $op in 
    1)
	echo "impresion de los archivos por fecha de modificacion"
	echo "ingrese la ruta del directorio"
	read dir
	if [ -d $dir ] 
		then
			ls -lt $dir|awk {'print $6,$7,$8,$9'} 
			sh script1.sh
		else
			echo "usted no ingreso un directorio"
			sh script1.sh
	fi;;

    2) 
	echo "lista los directorio y luego los archivos"
	echo "ingrese la ruta del directorio"
	read dir
	if [ -d $dir ] 
		then
	echo "lista de directorios"
	echo "****************************************************"
	ls -lF $dir| grep '/'
	echo "****************************************************"
	echo lista de archivos
	ls -lF $dir > res
	ls -lF $dir| grep '/'> res2
	diff -r res res2 |awk {'print $8,$9,$10'}
	rm res res2
	sh script1.sh
		else
			echo "usted no ingreso un directorio"
			sh script1.sh
	fi;;

    3)
	echo "ordena por tamaño de archivo"
	echo "ingrese la ruta del directorio"
	read dir
	if [ -d $dir ] 
		then
		du -sh $dir/*|sort
		sh script1.sh
	else
			echo "usted no ingreso un directorio"
			sh script1.sh
	fi;;


    *)
	echo "ultima opcion"
	echo "salir del script";;

esac 
