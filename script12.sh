#!/bin/bash 
echo -n "Ingrese nombre del usuario: " 
read grupo

if grep -qi "^$grupo:" /etc/group
then
    echo "lista de usuarios que pertenecen al grupo"
    cat /etc/group|awk '$1=="'$grupo'" {printf "%-12s : %-10s\n",$1,$4}' FS=":"
else 
    echo "No existe" 
fi 

