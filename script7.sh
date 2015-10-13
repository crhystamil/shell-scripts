#!/bin/bash

nombre=$(whoami) 
#name="root"
#if [ $nombre = $name ];
#then 
echo 'creando los directorios backup1 y backup2'
mkdir /tmp/backup1 /tmp/backup2
echo "copiando $HOME a /tmp/backup1"
cp -pr $HOME /tmp/backup1
echo "copiando el contenido de backup1 a backup2" 
cp -pr /tmp/backup1/$nombre /tmp/backup2
echo "cambiando permisos de backup1 y backup2"
chmod -R a+x /tmp/backup1 
chmod -R a-w /tmp/backup2
echo "eliminando el direcorio backup2"
rm -rf /tmp/backup2
#else 
 #   echo 'debes estar como root'
  #  echo "eres el usuario $nombre"
#fi

