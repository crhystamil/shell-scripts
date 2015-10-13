#!/bin/bash

echo 'lista de archivos modificados el dia de ayer'
ls -lR $HOME --full-time|awk '{print $6,$9}'|grep $(date --date='-1 day' +"%Y-%m-%d")
