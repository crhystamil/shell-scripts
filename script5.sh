#!/bin/bash
# para hacer que el scrit inicie con el sistema 
# debemos de usar el comando update-rc 
# o crear un enlace simbolico en los niveles de ejecucion 
# crear un elace 
# ln -s  /etc/init.d/mi_script /etc/rc3.d/S98miscript

# pregunta si existe el archivo en la direccion 
if [ -f /var/log/corrida.txt ]
then
# ingresa la fecha y la hora en la que se ejecuta el comando
    date >> /var/log/corrida.txt
else
# crea el archivo corrida.txt 
    touch /var/log/corrida.txt
fi
