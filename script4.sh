#!/bin/bash
echo "ingresa el nombre del proceso"
read proceso
     ps -aux|grep -i "$proceso" |awk {'print $2,$11,$12'}




	 
