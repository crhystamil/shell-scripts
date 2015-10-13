#!/bin/bash

echo 'ingrese el nombre del archivo'
read archivo

echo '1 ) buscar en el home'
echo '2 ) buscar en todo el sistema debe estar como root'
read op
case $op in 
    1)
        find $HOME -name "$archivo" -exec ls -l {} \;|awk '{print ($1,$9)}'
        echo "listo";;
    2)
        find / -name "$archivo" -exec ls -l {} \;|awk '{print ($1,$9)}'
        echo "listo";;
    *)
        echo "salir";;
esac
        


