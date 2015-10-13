#!/bin/bash 
echo -n "Ingrese nombre del usuario: " 
read usuario 

if grep -qi "^$usuario:" /etc/passwd 
then 
    id $usuario
else 
    echo "No existe" 
fi 

