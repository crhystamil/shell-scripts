#!/bin/bash

echo 'ingrese el nombre del archivo'
read archivo

echo '1 ) buscar en el home'
echo '2 ) buscar en todo el sistema debe estar como root'
read op
case $op in 
    1)
        find $HOME -name $archivo -exec ls --format=single-column -R {} \;
        echo "listo";;
    2)
        find $HOME -name $archivo -exec ls --format=single-column -R {} \;
        echo "listo";;
    *)
        echo "salir";;
esac
        


